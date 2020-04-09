import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { LoginCredential } from '../models/loginCredential';
import { Observable, BehaviorSubject } from 'rxjs';
import { LoginResult } from '../models/loginResult';
import { User } from '../models/user';
import { map } from 'rxjs/operators';
import { Router } from '@angular/router';
@Injectable({
  providedIn: 'root'
})
export class LoginService {
  url = environment.url + 'login/';

  constructor(private http: HttpClient) { }

  currentUserValue() {
    const storage = localStorage.getItem('currentUser');
    return storage ? JSON.parse(storage) : null;
  }

  get isLogged(): boolean {
    return this.currentUserValue() != null;
  }

  login(userAccount: LoginCredential) {
    return this.http.post(this.url, userAccount).pipe(map((user: LoginResult) => {
      localStorage.setItem('currentUser', JSON.stringify(user));
      return user;
    }));
  }

  logout() {
    localStorage.removeItem('currentUser');
  }

}
