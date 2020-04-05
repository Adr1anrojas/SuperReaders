import { Component } from '@angular/core';
import { DateTimeAdapter } from 'ng-pick-datetime';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'SuperReaders';
  /**
   *
   */
  constructor(dateTimeAdapter: DateTimeAdapter<any>) {
    dateTimeAdapter.setLocale('es');
  }
}
