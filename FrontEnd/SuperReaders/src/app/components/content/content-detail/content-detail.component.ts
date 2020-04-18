import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';

@Component({
  selector: 'app-content-detail',
  templateUrl: './content-detail.component.html',
  styleUrls: ['./content-detail.component.css']
})
export class ContentDetailComponent implements OnInit {
  currentStepper: number = 1;
  constructor() { }
  formContent: FormGroup = new FormGroup({
    title: new FormControl('', Validators.required),
    idContent: new FormControl('')
  });

  ngOnInit(): void {
  }
  
  nextCurrentStepper(): number {
    return this.currentStepper + 1;
  }

}
