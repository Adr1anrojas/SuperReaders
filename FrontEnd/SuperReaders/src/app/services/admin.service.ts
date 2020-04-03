import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { User } from '../models/user';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class AdminService {
  url = environment.url + 'user/';
  constructor(private http: HttpClient) { }

  create(user: User) {
    return this.http.post(this.url, user);
  }

  update(user: User) {
    return this.http.put(this.url, user);
  }

  getAll() {
    return this.http.get(this.url + 'all/Admin');
  }

  delete(idUser: number) {
    return this.http.delete(this.url+idUser);
  }

}