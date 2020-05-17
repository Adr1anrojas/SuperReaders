import { Injectable } from '@angular/core';
import { ContentDTO } from '../models/contentDTO';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { Content } from '@angular/compiler/src/render3/r3_ast';
import { TypeContent } from '../models/typeContent';
import { StudentContent } from '../models/StudentContent';
import { StudentAnswer } from '../models/StudentAnswer';

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

  createTypeContentStudent(typeContentStudent: TypeContent[]) {
    return this.http.post(this.url + 'typeContentStudent', typeContentStudent);
  }

  saveContentStudent(contentStudent: StudentContent) {
    return this.http.post(this.url + 'contentStudent', contentStudent);
  }

  updateTimeReading(contentStudent: StudentContent) {
    return this.http.put(this.url + 'updateTimeReading', contentStudent);
  }

  updateFinishContent(contentStudent: StudentContent) {
    return this.http.put(this.url + 'finishContent', contentStudent);
  }

  saveAnswerStudent(studentAnswers: StudentAnswer[]) {
    return this.http.post(this.url + 'saveAnswerStudent', studentAnswers);
  }

  getAllContentByPreferenceStudent(idStudent: number) {
    return this.http.get(this.url + 'contentByPreferenceStudent/' + idStudent);
  }

}
