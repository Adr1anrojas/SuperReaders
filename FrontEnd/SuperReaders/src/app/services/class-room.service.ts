import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { ClassRoom } from '../models/classRoom';

@Injectable({
  providedIn: 'root'
})
export class ClassRoomService {
  url = environment.url + 'ClassRoom/';
  constructor(private http: HttpClient) { }

  create(classRoom: ClassRoom) {
    return this.http.post(this.url, classRoom);
  }

  update(classRoom: ClassRoom) {
    return this.http.put(this.url, classRoom);
  }

  getAllAvailable() {
    return this.http.get(this.url + 'allAvailable');
  }
  getAllWithInfo() {
    return this.http.get(this.url + 'allInfo');
  }

  getAll() {
    return this.http.get(this.url + 'all');
  }

  delete(idClassRoom: number) {
    return this.http.delete(this.url + idClassRoom);
  }

}
