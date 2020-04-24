import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators, MinLengthValidator, FormArray, FormBuilder } from '@angular/forms';
import { ContentFile } from 'src/app/models/contentFile';
import { Page } from 'src/app/models/page';
import { Question } from 'src/app/models/Question';
import { Answer } from 'src/app/models/answer';
import { Content } from '@angular/compiler/src/render3/r3_ast';
import { ContentDTO } from 'src/app/models/contentDTO';
import { ContentService } from 'src/app/services/content.service';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-content-detail',
  templateUrl: './content-detail.component.html',
  styleUrls: ['./content-detail.component.css']
})

export class ContentDetailComponent implements OnInit {
  currentStepper: number = 1;
  submitted: Boolean = false;
  content: ContentFile;
  pagesArray: Page[] = [];
  imageURL: any;
  formContent: FormGroup = new FormGroup({
    id: new FormControl(''),
    title: new FormControl('', [Validators.required, Validators.minLength(3)]),
    idTypeContent: new FormControl(''),
    img: new FormControl('', Validators.required)
  });
  formPages = new FormGroup({
    pages: new FormArray([
      new FormControl('', Validators.required)
    ])
  });
  questions: Question[] = [];
  file: any;
  pageCurrent: number = 0;
  constructor(private toastr: ToastrService, private contentService: ContentService) { }

  ngOnInit(): void {
    this.addQuestion();
  }

  get pages(): FormArray {
    return this.formPages.get('pages') as FormArray;
  }

  addPage() {
    this.currentPage(this.pages.length);
    this.pages.push(new FormControl('', Validators.required));
  }

  get pageCurrentValue() {
    return this.pageCurrent;
  }

  currentPage(index: number) {
    this.pageCurrent = index;
    return this.pageCurrent;
  }

  deletePage(page) {
    if (this.pages.length !== 1) {
      this.pages.removeAt(page);
    }
  }

  nextCurrentStepper(): number {
    return this.currentStepper += 1;
  }

  lastCurrentStepper() {
    this.currentStepper -= 1;
  }

  get controlsContent() {
    return this.formContent.controls;
  }

  get controlsPage() {
    return this.formPages.controls;
  }

  addQuestion() {
    let question: Question = {
      id: 0,
      text: "",
      idContent: 0,
      answers: [
        {
          id: 0,
          text: "",
          isCorrect: false,
          idQuestion: 0
        }
      ]
    };
    this.questions.push(question);
  }

  addAnswer(index: number) {
    let answer: Answer = {
      id: 0,
      text: "",
      isCorrect: false,
      idQuestion: 0
    };
    this.questions[index].answers.push(answer);
  }
  setRadioButton(i: number, j: number) {
    console.log(i + ', ' + j)
    this.questions[i].answers[j].isCorrect = true;
  }

  onSubmitContent() {
    this.submitted = true;
    if (this.formContent.valid) {
      this.content = this.createAnContent();
      this.nextCurrentStepper();
      this.submitted = false;
    }
  }

  uploadContent() {
    let content: ContentDTO = {
      content: this.content,
      questions: this.questions,
      pages: this.pagesArray
    }
    this.contentService.create(content).subscribe(res => {
      this.toastr.success('¡Hecho!', 'Se creó el Contenido.');
      this.formContent.reset();
      this.formPages.reset();
      this.pagesArray = [];
      this.questions = [];
    }, error => {
      if (error == 'Bad Request')
        this.toastr.error('El titulo del Contenido esta en uso.', '¡Error!');
      else
        this.toastr.error('Ocurrio un problema al crear el Contenido.', '¡Error!');
    });
  }

  onSubmitPages() {
    this.submitted = true;
    let value = this.controlsPage.pages.value;
    if (this.formPages.valid) {
      for (let index = 0; index < value.length; index++) {
        this.pagesArray.push(
          {
            id: 0,
            text: value[index],
            idContent: 0
          }
        );
      }
      this.nextCurrentStepper();
    }
  }

  onSubmitQuestions() {
    console.log("Submit");
    console.log(this.questions.length);
  }

  // Image Preview
  readURL(event): void {
    if (event.target.files && event.target.files[0]) {
      this.file = event.target.files[0];
      this.controlsContent.img.setValue(this.file, { onlySelf: true });
      const reader = new FileReader();
      reader.onload = e => this.imageURL = reader.result;
      reader.readAsDataURL(this.file);
    }
  }

  editContent(e: ContentFile) {
    this.formContent.patchValue({
      id: e.id,
      title: e.title,
      idTypeContent: e.idTypeContent,
      img: this.formContent.get('img')
    });
  }

  createAnContent(): ContentFile {
    return {
      id: +this.formContent.get('id').value,
      title: this.formContent.get('title').value,
      idTypeContent: +this.formContent.get('idTypeContent').value,
      status: true,
      img: this.formContent.get('img').value
    }
  }

  createAnPage(): Page {
    return {
      id: +this.formPages.get('id').value,
      text: this.formPages.get('text').value,
      idContent: this.formPages.get('idContent').value,
    }
  }

}
