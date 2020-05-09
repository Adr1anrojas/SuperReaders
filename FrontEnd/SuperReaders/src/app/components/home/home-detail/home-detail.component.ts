import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ContentService } from 'src/app/services/content.service';
import { LoginResult } from 'src/app/models/loginResult';
import { ContentFile } from 'src/app/models/contentFile';
import { LoginService } from 'src/app/services/login.service';
import { ContentDTO } from 'src/app/models/contentDTO';
import { ImageService } from 'src/app/services/image.service';
import { Answer } from 'src/app/models/answer';
import { Question } from 'src/app/models/Question';

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
  constructor(private route: ActivatedRoute, private contentService: ContentService, private loginService: LoginService, public imageService: ImageService) { }

  ngOnInit(): void {
    this.id = +this.route.snapshot.paramMap.get('id');
    this.currentUser = this.loginService.currentUserValue();
    this.getContentById(this.id);
    this.startTimer();
  }

  nextPage() {
    this.displayQuestions ? this.currentQuestion += 1 : this.currentPageContent += 1;
  }

  lastPage() {
    this.displayQuestions ? this.currentQuestion -= 1 : this.currentPageContent -= 1;
  }

  nextStep() {
    if (this.displayQuestions)
      console.log(this.currentContent);
    else
      this.displayQuestions = true;
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
