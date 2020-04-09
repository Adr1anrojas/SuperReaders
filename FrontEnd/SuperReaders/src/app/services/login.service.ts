import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { LoginCredential } from '../models/loginCredential';
import { Observable } from 'rxjs';
import { LoginResult } from '../models/loginResult';

@Injectable({
  providedIn: 'root'
})
export class LoginService {
  url = environment.url + 'login/';
  constructor(private http: HttpClient) { }

  SignIn(userAccount: LoginCredential) {
    return this.http.post(this.url, userAccount);
  }

}
