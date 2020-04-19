import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators, MinLengthValidator, FormArray, FormBuilder } from '@angular/forms';
import { ContentFile } from 'src/app/models/contentFile';
import { Page } from 'src/app/models/page';

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
  // page: Page;
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
  formQuestion = new FormGroup({
    pages: new FormArray([
      new FormControl('', Validators.required)
    ])
  });
  file: any;
  pageCurrent: number = 0;
  constructor() { }

  ngOnInit(): void {
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

  onSubmitContent() {
    this.submitted = true;
    if (this.formContent.valid) {
      this.content = this.createAnContent();
      this.nextCurrentStepper();
      this.submitted = false;
    }
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
