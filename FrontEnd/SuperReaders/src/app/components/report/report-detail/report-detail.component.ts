import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Observable } from 'rxjs';
import { map } from 'rxjs/internal/operators/map';
import { Student } from 'src/app/models/student';

@Component({
  selector: 'app-report-detail',
  templateUrl: './report-detail.component.html',
  styleUrls: ['./report-detail.component.css']
})
export class ReportDetailComponent implements OnInit {
  state$: Observable<object>;
  student: Student;
  constructor(public activatedRoute: ActivatedRoute) { }

  ngOnInit(): void {
    this.getStudent();
  }

  getStudent() {
    this.state$ = this.activatedRoute.paramMap.pipe(map(() => window.history.state));
    this.state$.subscribe((res: any) => this.student = res.student);
  }
}
