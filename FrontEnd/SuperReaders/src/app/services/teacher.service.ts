import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { HttpClientModule } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class TeacherService {
  url:any = environment.url;

  constructor(http: HttpClientModule) { 
  }

}
