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
  base64textString: string;
  formContent: FormGroup = new FormGroup({
    id: new FormControl(''),
    title: new FormControl('', [Validators.required, Validators.minLength(3)]),
    typeContent: new FormControl(''),
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
  typeContents: TypeContent[] = [];
  isUpdate: Boolean = false;
  constructor(private toastr: ToastrService, private contentService: ContentService) { }

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
      pages: this.pagesArray,
      questions: this.questions,
    }
    content.content.img = this.base64textString;
    this.contentService.create(content).subscribe(res => {
      this.toastr.success('¡Hecho!', 'Se creó el Contenido.');
      this.formContent.reset();
      this.formPages.reset();
      this.pagesArray = [];
      this.questions = [];
      this.currentStepper = 1;
      this.submitted = false;
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
      reader.onload = this.handleFile.bind(this);
      reader.readAsBinaryString(this.file);
    }
  }

    handleFile(event) {
      var binaryString = event.target.result;
      this.base64textString = btoa(binaryString);
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
