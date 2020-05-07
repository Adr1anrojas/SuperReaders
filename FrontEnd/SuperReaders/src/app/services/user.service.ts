import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { User } from '../models/user';
import { HttpClient } from '@angular/common/http';
import { ClassRoom } from '../models/classRoom';
import { TypeContent } from '../models/typeContent';

@Injectable({
  providedIn: 'root'
})
export class UserService {
  url = environment.url + 'user/';
  constructor(private http: HttpClient) { }

  create(user: User) {
    return this.http.post(this.url, user);
  }

  update(user: User) {
    return this.http.put(this.url, user);
  }

  getAllAdmins() {
    return this.http.get(this.url + 'GetAdmins');
  }

  getAllTeachers() {
    return this.http.get(this.url + 'GetTeachers');
  }

  getAllStudents() {
    return this.http.get(this.url + 'GetStudents');
  }

  getAllStudentsByClassRoom(idClassroom: number) {
    return this.http.get(this.url + 'GetStudentsByClassRoom/' + idClassroom);
  }

  delete(idUser: number, role: string) {
    return this.http.delete(this.url + idUser + '/' + role);
  }

  createTypeContentStudent(typeContentStudent: TypeContent[]) {
    return this.http.post(this.url + 'typeContentStudent', typeContentStudent);
  }

}