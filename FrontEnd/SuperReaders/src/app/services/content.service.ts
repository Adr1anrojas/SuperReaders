import { Injectable } from '@angular/core';
import { ContentDTO } from '../models/contentDTO';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ContentService {
  url = environment.url + 'content/';
  constructor(private http: HttpClient) { }

  create(content: ContentDTO) {
    return this.http.post(this.url, content);
  }

  getTypeContent() {
    return this.http.get(this.url + 'typeContent');
  }

}
