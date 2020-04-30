import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators, FormArray } from '@angular/forms';
import { ContentFile } from 'src/app/models/contentFile';
import { Page } from 'src/app/models/page';
import { Question } from 'src/app/models/Question';
import { Answer } from 'src/app/models/answer';
import { ContentDTO } from 'src/app/models/contentDTO';
import { ContentService } from 'src/app/services/content.service';
import { ToastrService } from 'ngx-toastr';
import { TypeContent } from 'src/app/models/typeContent';
import { ImageService } from 'src/app/services/image.service';

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
  imgContent: string;
  formContent: FormGroup = new FormGroup({
    id: new FormControl(''),
    title: new FormControl('', [Validators.required, Validators.minLength(3)]),
    typeContent: new FormControl('', Validators.required),
    img: new FormControl('', Validators.required)
  });
  formPages = new FormGroup({
    pages: new FormArray([
      new FormControl('', Validators.required),
    ]),
    images: new FormArray([
      new FormControl(''),
    ]),
    urls: new FormArray([
      new FormControl(''),
    ])
  });
  formQuestion: FormGroup = new FormGroup({});
  questions: Question[] = [];
  file: any;
  pageCurrent: number = 0;
  typeContents: TypeContent[] = [];
  isUpdate: Boolean = false;
  checkQuestions: Boolean = false;
  checkAnswers: Boolean = false;
  checkOptionAnswers: Boolean = false;
  questionsValid: Boolean = true;
  constructor(private toastr: ToastrService, private contentService: ContentService, public imageService: ImageService) { }

  ngOnInit(): void {
    this.getTypeContent();
    this.addQuestion();
  }

  getTypeContent() {
    this.contentService.getTypeContent().subscribe((res: TypeContent[]) => {
      this.typeContents = res;
      console.log(this.typeContents);
    }, error => console.log(error));
  }

  get pages(): FormArray {
    return this.formPages.get('pages') as FormArray;
  }
  get images(): FormArray {
    return this.formPages.get('images') as FormArray;
  }
  get urls(): FormArray {
    return this.formPages.get('urls') as FormArray;
  }

  addPage() {
    this.currentPage(this.pages.length);
    this.pages.push(new FormControl('', Validators.required));
    this.images.push(new FormControl('', Validators.required));
    this.urls.push(new FormControl('', Validators.required));
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
      this.images.removeAt(page);
      this.urls.removeAt(page);
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
      pages: this.pagesArray,
      questions: this.questions,
    }
    // content.content.img = this.base64textString;
    this.contentService.create(content).subscribe(res => {
      this.toastr.success('¡Hecho!', 'Se creó el Contenido.');
      this.formContent.reset();
      this.formPages.reset();
      this.pagesArray = [];
      this.questions = [];
      this.currentStepper = 1;
      this.submitted = false;
      this.imgContent = null;
      this.imageURL = null;
    }, error => {
      if (error == 'Bad Request')
        this.toastr.error('El titulo del Contenido esta en uso.', '¡Error!');
      else
        this.toastr.error('Ocurrio un problema al crear el Contenido.', '¡Error!');
    });
  }

  onSubmitPages() {
    this.submitted = true;
    this.pagesArray = [];
    let pages = this.controlsPage.pages.value;
    let imgs = this.controlsPage.images;
    debugger;
    if (this.pages.valid) {
      for (let index = 0; index < pages.length; index++) {
        this.pagesArray.push(
          {
            id: 0,
            text: pages[index],
            idContent: 0,
            img: imgs[index]
          }
        );
      }
      this.nextCurrentStepper();
    }
  }

  onSubmitQuestions() {
    debugger;
    this.submitted = true;
    if (this.formQuestion.valid && this.questionsValid)
      this.uploadContent();
  }


  validateQuestions() {
    if (this.questions.length >= 2) {
      let countAnswers: number = 0;
      let countCheckAnswer: number = 0;
      this.questions.forEach(question => {
        question.answers.forEach(answer => {
          if (answer.isCorrect)
            countCheckAnswer++;
        });
        if (question.answers.length >= 2)
          countAnswers++;
      });
      this.checkQuestions = this.questions.length >= 2 ? true : false;
      this.checkAnswers = countAnswers === this.questions.length ? true : false;
      this.checkOptionAnswers = countCheckAnswer === this.questions.length ? true : false;
      this.questionsValid = this.checkQuestions && this.checkAnswers && this.checkOptionAnswers
    }
  }

  // Image Preview
  readURL(event): void {
    console.log(event);
    if (event.target.files && event.target.files[0]) {
      this.file = event.target.files[0];
      this.getUrlFile(this.file);
      const reader = new FileReader();
      reader.onload = this.handleFile.bind(this);
      reader.readAsBinaryString(this.file);
    }
  }

  getUrlFile(file) {
    const reader = new FileReader();
    reader.onload = e => {
      if (this.currentStepper === 1)
        this.imageURL = reader.result;
      else
        this.urls[this.pageCurrentValue] = reader.result;
    }
    reader.readAsDataURL(file);
  }

  handleFile(event) {
    var convertTostring = btoa(event.target.result);
    if (this.currentStepper === 1)
      this.imgContent = btoa(convertTostring);
    else if (this.currentStepper === 2)
      this.images[this.pageCurrentValue] = convertTostring;
  }

  editContent(e: ContentFile) {
    this.formContent.patchValue({
      id: e.id,
      title: e.title,
      typeContent: e.idTypeContent,
      img: this.formContent.get('img')
    });
  }

  createAnContent(): ContentFile {
    return {
      id: +this.formContent.get('id').value,
      title: this.formContent.get('title').value,
      idTypeContent: this.formContent.get('typeContent').value.id,
      status: true,
      img: this.imgContent
    }
  }
}
