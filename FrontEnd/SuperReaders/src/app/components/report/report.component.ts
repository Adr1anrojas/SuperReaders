import { ContentMoreRead } from './../../models/contentmoreread';
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
