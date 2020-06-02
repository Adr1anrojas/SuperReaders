import { ContentMoreRead } from './../../models/contentmoreread';
import { ReportStudent } from 'src/app/models/reportStudent';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ReportService } from 'src/app/services/report.service';
import { Report } from 'src/app/models/report';
import { LoginResult } from 'src/app/models/loginResult';
import { LoginService } from 'src/app/services/login.service';
import { Student } from 'src/app/models/student';

@Component({
  selector: 'app-report',
  templateUrl: './report.component.html',
  styleUrls: ['./report.component.css']
})
export class ReportComponent implements OnInit {
  // Pie
  reports: Report[] = [];

  idStudent: number;
  currentUser: LoginResult;
  pieChartData: number[] = [];
  students: Student[] = [];
  pieChartLegend = true;
  pieChartColors = [{ backgroundColor: ['#2ec553', 'red'] }];
  chartOptions = { responsive: true };   // THIS WILL MAKE THE CHART RESPONSIVE (VISIBLE IN ANY DEVICE).
  labelspie = ['Contenidos Finalizados', 'Contenidos no Finalizados'];
  labels = ['Contenidos Finalizados'];
  labelsChartHorizontal = ['Contenidos Leidos'];
  // STATIC DATA FOR THE CHART IN JSON FORMAT.
  chartData = [];
  chartHorizontalData = [];
  // CHART COLOR.
  colors = [];
  columns: string[] = ['Nombres', 'Apellidos', 'Tiempo de lectura', 'Contenidos leidos', 'Contenidos finalizados', 'Contenidos no finalizados', 'Accion'];

  constructor(private route: Router, private reportService: ReportService, private loginService: LoginService, private router: Router) { }

  ngOnInit(): void {
    this.currentUser = this.loginService.currentUserValue();
    this.getAllMonitoringByClassRoom();
  }

  getAllMonitoringByClassRoom() {
    this.reportService.getMonitoringByIdClassRoom(this.currentUser.classRoom.id).subscribe((res: Report[]) => {
      this.reports = res;
      let contentRead = 0, contentNotRead = 0;
      this.reports.forEach(report => {
        report.student.forEach(student => {
          this.students.push(student);
          this.chartData.push({ label: student.firstName + ' ' + student.lastName, data: [student.contentFinished] });
          this.chartHorizontalData.push({ label: student.firstName + ' ' + student.lastName , data: [student.contentRead] });
        });
        contentRead = report.sumContentFinished;
        contentNotRead = report.sumContentNotFinished;
      });
      this.pieChartData = [contentRead, contentNotRead];
    });
  }

  onChartClick(event) {
    console.log(event);
  }

  viewDetail(student: Student) {
    this.router.navigateByUrl('report/detail', { state: { student: student } });
  }

}
