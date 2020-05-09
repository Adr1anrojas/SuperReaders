import { Component, OnInit, ɵflushModuleScopingQueueAsMuchAsPossible } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ContentService } from 'src/app/services/content.service';
import { LoginResult } from 'src/app/models/loginResult';
import { LoginService } from 'src/app/services/login.service';
import { ContentDTO } from 'src/app/models/contentDTO';
import { ImageService } from 'src/app/services/image.service';


@Component({
  selector: 'app-home-detail',
  templateUrl: './home-detail.component.html',
  styleUrls: ['./home-detail.component.css']
})
export class HomeDetailComponent implements OnInit {
  id: number;
  currentUser: LoginResult;
  currentContent: ContentDTO;
  currentPageContent: number = 0;
  currentQuestion: number = 0;
  displayQuestions: Boolean = false;
  interval: any;
  timeLeft = 0;
  isAnswerSelectedValid: Boolean = true;
  constructor(private route: ActivatedRoute, private contentService: ContentService, private loginService: LoginService, public imageService: ImageService) { }

  ngOnInit(): void {
    this.id = +this.route.snapshot.paramMap.get('id');
    this.currentUser = this.loginService.currentUserValue();
    this.getContentById(this.id);
    this.startTimer();
  }

  nextPage() {
    this.displayQuestions ? this.checkAnswer(this.currentQuestion) : this.currentPageContent += 1;
  }

  checkAnswer(index: number) {
    this.isAnswerSelectedValid = true;
    let count = 0;
    this.currentContent.questions[index].answers.forEach(answer => {
      if (answer.isCorrect)
        count++;
    });
    if (count > 0) {
      if ((this.currentContent.questions.length - 1) !== index)
        this.currentQuestion += 1;
    }
    else
      this.isAnswerSelectedValid = false;
  }

  lastPage() {
    this.displayQuestions ? this.currentQuestion -= 1 : this.currentPageContent -= 1;
  }

  nextStep() {
    if (this.displayQuestions) {
      this.checkAnswer(this.currentContent.questions.length - 1);
      if (this.isAnswerSelectedValid)
        console.log("Hecho");
    }
    else {
      this.displayQuestions = true;
      this.pauseTimer();
    }
  }

  getContentById(id: number) {
    this.contentService.getContentById(this.id).then(res => {
      this.currentContent = res;
      this.currentContent.questions.forEach(question => question.answers.forEach(answer => answer.isCorrect = false));
    });
  }

  startTimer() {
    this.interval = setInterval(() => {
      this.timeLeft++;
      console.log(this.timeLeft);
    }, 1000);
  }

  pauseTimer() {
    clearInterval(this.interval);
  }

}
