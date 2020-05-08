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
import { ActivatedRoute } from '@angular/router';
declare var $: any;
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
    img: new FormControl('')
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
  questionIsEmpty: number = 0;
  answerIsEmpty: number = 0;
  id: number = 0;
  currentContent: ContentDTO;
  constructor(private toastr: ToastrService, private contentService: ContentService, public imageService: ImageService, private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.id = +this.route.snapshot.paramMap.get('id');
    this.getTypeContent();
    if (this.id !== 0) {
      this.getContentById(this.id);
    } else
      this.addQuestion();
  }

  getTypeContent() {
    this.contentService.getTypeContent().subscribe((res: TypeContent[]) => {
      this.typeContents = res;
    });
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

  addPage(page?: Page, index?: number) {
    this.currentPage(this.pages.length);
    this.pages.push(new FormControl(!page ? '' : this.currentContent.pages[index].text, Validators.required));
    this.images.push(new FormControl(!page ? '' : this.currentContent.pages[index].img, Validators.required));
    this.urls.push(new FormControl(!page ? '' : this.getUrlFile(this.dataURItoFile(this.currentContent.pages[index].img), index), Validators.required));
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
    this.submitted = true;
    if (this.formQuestion.valid && this.validateQuestions())
      this.uploadContent();
    else {
      $("#myModal").modal("show");
    }
  }

  validateQuestions() {
    let countAnswers: number = 0;
    let countCheckAnswer: number = 0;
    this.questionIsEmpty = 0;
    this.answerIsEmpty = 0;
    if (this.questions.length >= 1) {
      this.questions.forEach(question => {
        if (question.text == "")
          this.questionIsEmpty++;
        question.answers.forEach(answer => {
          if (answer.isCorrect)
            countCheckAnswer++;
          if (answer.text == "")
            this.answerIsEmpty++;
        });
        if (question.answers.length >= 2)
          countAnswers++;
      });
    }
    this.checkQuestions = this.questions.length >= 2 ? true : false;
    this.checkAnswers = (countAnswers === this.questions.length) ? true : false;
    this.checkOptionAnswers = countCheckAnswer === this.questions.length ? true : false;
    this.questionsValid = (this.checkQuestions && this.checkAnswers && this.checkOptionAnswers && this.questionIsEmpty == 0 && this.answerIsEmpty == 0);
    return this.questionsValid;
  }

  // Image Preview
  readURL(event): void {
    if (event.target.files && event.target.files[0]) {
      this.file = event.target.files[0];
      this.getUrlFile(this.file);
      const reader = new FileReader();
      reader.onload = this.handleFile.bind(this);
      reader.readAsBinaryString(this.file);
    }
  }

  getUrlFile(file, index?) {
    const reader = new FileReader();
    reader.onload = e => {
      if (!this.currentContent)
        if (this.currentStepper === 1 && !this.currentContent)
          this.imageURL = reader.result;
        else
          this.urls[this.pageCurrentValue] = reader.result;
      else
        this.urls[index] = reader.result;
    }
    reader.readAsDataURL(file);
  }

  dataURItoFile(dataURI) {
    const byteString = window.atob(dataURI);
    const arrayBuffer = new ArrayBuffer(byteString.length);
    const int8Array = new Uint8Array(arrayBuffer);
    for (let i = 0; i < byteString.length; i++) {
      int8Array[i] = byteString.charCodeAt(i);
    }
    const blob = new Blob([int8Array], { type: 'image/jpeg' });
    return new File([blob], this.currentContent.content.title, { type: 'image/jpeg' });
  }

  handleFile(event) {
    var convertTostring = btoa(event.target.result);
    if (this.currentStepper === 1 && !this.currentContent)
      this.imgContent = convertTostring;
    else if (this.currentStepper === 2)
      this.images[this.pageCurrentValue] = convertTostring;
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

  getContentById(id: number) {
    this.contentService.getContentById(id).then((res: ContentDTO) => {
      this.currentContent = res;
      this.editContentDTO(this.currentContent);
    });
  }


  editContentDTO(content: ContentDTO) {
    this.formContent.setValue({
      id: content.content.id,
      title: content.content.title,
      typeContent: this.typeContents.find(e => e.id == content.content.idTypeContent),
      img: ''
    });
    console.log(this.currentContent);
    this.file = this.dataURItoFile(this.currentContent.content.img);
    console.log(this.file);
    this.imgContent = this.currentContent.content.img;
    this.getUrlFile(this.file);
    this.currentContent.pages.forEach((element, index) => {
      this.addPage(element, index)
    });
    console.log(this.pages.value);
    console.log(this.images.value);
    console.log(this.urls.value);
  }

}


