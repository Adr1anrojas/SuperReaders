import { Component, OnInit } from '@angular/core';
import { DateTimeAdapter } from 'ng-pick-datetime';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'SuperReaders';
  token: string;
  constructor(dateTimeAdapter: DateTimeAdapter<any>) {
    dateTimeAdapter.setLocale('es');
  }

  ngOnInit(): void {
    this.isUserAuth();
  }

  isUserAuth() {
    this.token = localStorage.getItem('token');
    console.log(this.token);
  }

}
