import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Observable } from 'rxjs';
import { map } from 'rxjs/internal/operators/map';
import { Student } from 'src/app/models/student';
import { ReportStudent } from 'src/app/models/reportStudent';
import { ReportService } from 'src/app/services/report.service';

@Component({
  selector: 'app-report-detail',
  templateUrl: './report-detail.component.html',
  styleUrls: ['./report-detail.component.css']
})
export class ReportDetailComponent implements OnInit {
  state$: Observable<object>;
  student: Student;
  detailStudent: ReportStudent [] = [];
  columns: string[] = ['Titulo', 'Nombre','Tiempo de lectura','Pagina actual','Fecha de inicio','Fecha de finalizacion','Finalizado','Respuestas correctas','Respuestas incorrectas' ];
  constructor(public activatedRoute: ActivatedRoute, private reportService: ReportService) { }

  ngOnInit(): void {
    this.getStudent();
    this.getMonitoringByStudent();
  }
  getMonitoringByStudent() {
    this.reportService.getMonitoringByStudent(this.student.id).subscribe((res: ReportStudent[]) => {
      this.detailStudent = res;
    });
  }
  getStudent() {
    this.state$ = this.activatedRoute.paramMap.pipe(map(() => window.history.state));
    this.state$.subscribe((res: any) => this.student = res.student);
  }
}
