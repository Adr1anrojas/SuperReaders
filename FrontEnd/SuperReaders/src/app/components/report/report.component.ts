import { ReportStudent } from 'src/app/models/reportStudent';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ReportService } from 'src/app/services/report.service';
import { Report } from 'src/app/models/report';
import { LoginResult } from 'src/app/models/loginResult';
import { LoginService } from 'src/app/services/login.service';
@Component({
  selector: 'app-report',
  templateUrl: './report.component.html',
  styleUrls: ['./report.component.css']
})
export class ReportComponent implements OnInit {
  public chartType: string = 'bar';

  public chartDatasets: Array<any> = [
    { data: [65, 59, 80, 81, 56, 55, 40], label: 'My First dataset' }
  ];

  public chartLabels: Array<any> = ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'];

  public chartColors: Array<any> = [
    {
      backgroundColor: [
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 159, 64, 0.2)'
      ],
      borderColor: [
        'rgba(255,99,132,1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 159, 64, 1)'
      ],
      borderWidth: 2,
    }
  ];

  public chartOptions: any = {
    responsive: true
  };
  public chartClicked(e: any): void { }
  public chartHovered(e: any): void { }

  reports: Report[]  = [];
  detailStudent: ReportStudent;
  idStudent: number;
  suma: number;
  currentUser: LoginResult;


  constructor(private route: Router, private reportService: ReportService, private loginService: LoginService) { }

  ngOnInit(): void {
    this.currentUser = this.loginService.currentUserValue();
    this.getAllMonitoringByClassRoom();

  }

  getAllMonitoringByClassRoom() {

    this.reportService.getMonitoringById(this.currentUser.classRoom.id).subscribe((res: Report[]) => {
      this.reports = res;
    });
  }
  getMonitoringByStudent() {

    this.reportService.getMonitoringByStudent(this.idStudent).subscribe((res: ReportStudent) => {
      this.detailStudent = res;
    });
  }
}
