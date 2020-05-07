import { Injectable } from '@angular/core';
import { ContentDTO } from '../models/contentDTO';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { Content } from '@angular/compiler/src/render3/r3_ast';

@Injectable({
  providedIn: 'root'
})
export class ContentService {
  url = environment.url + 'content/';
  constructor(private http: HttpClient) { }

  create(content: ContentDTO) {
    return this.http.post(this.url, content);
  }

  update(content: ContentDTO) {
    return this.http.put(this.url, content);
  }

  delete(id: number) {
    return this.http.delete(this.url + id);
  }

  async getContentById(id: number) {
    return this.http.get<ContentDTO>(this.url + id).toPromise();
  }

  getTypeContent() {
    return this.http.get(this.url + 'typeContent');
  }

  getAllContent() {
    return this.http.get(this.url);
  }


}
