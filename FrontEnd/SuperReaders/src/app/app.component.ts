import { Component, OnInit } from '@angular/core';
import { DateTimeAdapter } from 'ng-pick-datetime';
import { LoginService } from './services/login.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'SuperReaders';
  token: string;
  constructor(dateTimeAdapter: DateTimeAdapter<any>, public loginService: LoginService) {
    dateTimeAdapter.setLocale('es');
  }

  ngOnInit(): void {
  }

}
