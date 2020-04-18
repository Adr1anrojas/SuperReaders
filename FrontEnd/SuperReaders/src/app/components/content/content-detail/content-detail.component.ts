import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators, MinLengthValidator } from '@angular/forms';
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
  pages: Page[] = [];
  page: Page;
  imageURL: any;
  formContent: FormGroup = new FormGroup({
    id: new FormControl(''),
    title: new FormControl('', [Validators.required, Validators.minLength(3)]),
    idTypeContent: new FormControl(''),
    img: new FormControl('', Validators.required)
  });
  formPages: FormGroup = new FormGroup({
    id: new FormControl(''),
    text: new FormControl('', [Validators.required, Validators.minLength(3)]),
    idContent: new FormControl(''),
  });
  file: any;
  constructor() { }

  ngOnInit(): void {
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
    if (this.formPages.valid) {
      this.page = this.createAnPage();
      this.nextCurrentStepper();
      this.submitted = false;
    }
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
