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
// Pie
reports: Report [] = []  ;
detailStudent: ReportStudent;
idStudent: number;
suma: number;
currentUser: LoginResult;
pieChartData: number[] = [50, 30];

pieChartLegend = true;
pieChartColors = [
  {
    backgroundColor: ['rgba(255,0,0,0.3)', 'rgba(0,255,0,0.3)']
  },
];
  chartOptions = {
    responsive: true    // THIS WILL MAKE THE CHART RESPONSIVE (VISIBLE IN ANY DEVICE).
  }
  labelspie =  ['Contenidos Finalizados'];
  labels =  ['Contenidos Finalizados','Contenidos no Finalizados'];

  // STATIC DATA FOR THE CHART IN JSON FORMAT.
  chartData = [
    {
      label: 'Jose ramon',
      data: [4]
    },
    {
      label: 'Francisco Barraza',
      data: [2]
    },
    {
      label: 'Francisco Javier',
      data: [5]
    },
    {
      label: 'Jose ramon',
      data: [4]
    },
    {
      label: 'Francisco Barraza',
      data: [4]
    },
    {
      label: 'Francisco Javier',
      data: [5]
    },
    {
      label: 'Jose ramon',
      data: [5]
    },
    {
      label: 'Francisco Barraza',
      data: [4]
    },
    {
      label: 'Francisco Javier',
      data: [3]
    },
    {
      label: 'Jose ramon',
      data: [4]
    },
    {
      label: 'Francisco Barraza',
      data: [1]
    },
    {
      label: 'Francisco Javier',
      data: [2]
    },
    {
      label: 'Jose ramon',
      data: [4]
    },
    {
      label: 'Francisco Barraza',
      data: [1]
    },
    {
      label: 'Francisco Javier',
      data: [1]
    },
    {
      label: 'Jose ramon',
      data: [4]
    },
    {
      label: 'Francisco Barraza',
      data: [1]
    },
    {
      label: 'Francisco Javier',
      data: [4]
    },
    {
      label: 'Francisco Javier',
      data: [1]
    },
    {
      label: 'Jose ramon',
      data: [4]
    },
    {
      label: 'Francisco Barraza',
      data: [1]
    },
    {
      label: 'Francisco Javier',
      data: [4]
    }, {
      label: 'Francisco Javier',
      data: [1]
    },
    {
      label: 'Jose ramon',
      data: [4]
    },
    {
      label: 'Francisco Barraza',
      data: [1]
    },
    {
      label: 'Francisco Javier',
      data: [4]
    }
  ];

  // CHART COLOR.
  colors = [

  ]




  constructor(private route: Router, private reportService: ReportService, private loginService: LoginService) { }

  ngOnInit(): void {
    this.currentUser = this.loginService.currentUserValue();
    this.getAllMonitoringByClassRoom();

  }

  getValue()
  {
    this.reports.forEach(element => {
      this.suma = element.sumContentFinished;
      alert("El valor esta por lelga");
      alert( this.suma);
    });

  }
  getAllMonitoringByClassRoom() {

    this.reportService.getMonitoringById(this.currentUser.classRoom.id).subscribe((res: Report []) => {
      this.reports = res;
      this.getValue();
    });
  }
  getMonitoringByStudent() {

    this.reportService.getMonitoringByStudent(this.idStudent).subscribe((res: ReportStudent) => {
      this.detailStudent = res;
    });
  }

  onChartClick(event) {
    console.log(event);
  }
}
