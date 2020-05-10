import { Component, OnInit, OnDestroy } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ContentService } from 'src/app/services/content.service';
import { LoginResult } from 'src/app/models/loginResult';
import { LoginService } from 'src/app/services/login.service';
import { ContentDTO } from 'src/app/models/contentDTO';
import { ImageService } from 'src/app/services/image.service';
import { StudentContent } from 'src/app/models/StudentContent';
import { StudentAnswer } from 'src/app/models/StudentAnswer';

@Component({
  selector: 'app-home-detail',
  templateUrl: './home-detail.component.html',
  styleUrls: ['./home-detail.component.css']
})
export class HomeDetailComponent implements OnInit, OnDestroy {
  id: number;
  currentUser: LoginResult;
  currentContent: ContentDTO;
  currentPageContent: number = 0;
  currentQuestion: number = 0;
  displayQuestions: Boolean = false;
  interval: any;
  timeLeft = 0;
  isAnswerSelectedValid: Boolean = true;
  studentContent: StudentContent;
  currentStudentContent: StudentContent;
  constructor(private route: ActivatedRoute, private router: Router, private contentService: ContentService, private loginService: LoginService, public imageService: ImageService) { }

  ngOnInit(): void {
    this.id = +this.route.snapshot.paramMap.get('id');
    this.currentUser = this.loginService.currentUserValue();
    this.getContentById(this.id);
  }

  ngOnDestroy(): void {
    this.pauseTimer();
    console.log("Saliendo...");
    console.log("timeleft " + this.timeLeft);
    console.log("tiempo actual " + this.currentStudentContent.timeReading);
    this.currentStudentContent.timeReading += this.timeLeft;
    console.log("Tiempo actualizado " + this.currentStudentContent.timeReading);
    this.currentStudentContent.currentPage = this.currentPageContent;
    this.updateTimeReading();
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
      if (this.isAnswerSelectedValid) {
        let studentAnswers: StudentAnswer[] = [];
        this.currentContent.questions.forEach(question =>
          question.answers.forEach(answer => {
            if (answer.isCorrect)
              studentAnswers.push(new StudentAnswer(this.currentUser.studentId, answer.id));
          })
        );
        this.saveAnswerStudent(studentAnswers);
        console.log("Hecho");
        this.router.navigate[''];
      }
    }
    else {
      this.updateTimeReading();
      this.displayQuestions = true;
      this.pauseTimer();
      this.updateFinishContent(this.currentStudentContent);
    }
  }

  getContentById(id: number) {
    this.contentService.getContentById(this.id).then(res => {
      this.currentContent = res;
      this.currentContent.questions.forEach(question => question.answers.forEach(answer => answer.isCorrect = false));
      this.studentContent = { idStudent: this.currentUser.studentId, idContent: this.currentContent.content.id };
      console.log(this.studentContent);
      this.saveContentStudent(this.studentContent);
      this.startTimer();
    });
  }

  startTimer() {
    this.interval = setInterval(() => {
      if (this.timeLeft == 60) {
        this.updateTimeReading();
      }
      this.timeLeft++;
      console.log(this.timeLeft);
    }, 1000);
  }

  pauseTimer() {
    clearInterval(this.interval);
  }

  saveContentStudent(contentStudent: StudentContent) {
    this.contentService.saveContentStudent(contentStudent).subscribe((res: StudentContent) => {
      this.currentStudentContent = res;
      console.log(this.currentStudentContent);
      this.currentPageContent = this.currentStudentContent.currentPage;
      if (this.currentStudentContent.isFinish) {
        this.pauseTimer();
        this.displayQuestions = true;
      }
    });
  }

  updateTimeReading() {
    console.log(this.currentStudentContent.timeReading);
    this.currentStudentContent.timeReading += this.timeLeft;
    console.log("Tiempo actualizado " + this.currentStudentContent.timeReading);
    this.currentStudentContent.currentPage = this.currentPageContent;
    this.contentService.updateTimeReading(this.currentStudentContent).subscribe((res: StudentContent) => {
      console.log("res update", res);
      this.currentStudentContent = res;
      this.timeLeft = 0;
    });
  }

  updateFinishContent(studentContent: StudentContent) {
    this.contentService.updateFinishContent(studentContent).subscribe(res => console.log(res));
  }

  saveAnswerStudent(studentAnswers: StudentAnswer[]) {
    this.contentService.saveAnswerStudent(studentAnswers).subscribe(res => console.log(res));
  }

}
