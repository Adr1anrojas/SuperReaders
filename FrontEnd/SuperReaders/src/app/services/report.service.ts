import { Injectable } from '@angular/core';

import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
@Injectable({
  providedIn: 'root'
})
export class ReportService {
  url = environment.url + 'Monitoring/';
  constructor(private http: HttpClient) { }
  getMonitoringById(id: number) {
    return this.http.get(this.url + id);
  }
  getMonitoringByStudent(id: number) {
    return this.http.get(this.url + "Student/" + id);
  }
}
