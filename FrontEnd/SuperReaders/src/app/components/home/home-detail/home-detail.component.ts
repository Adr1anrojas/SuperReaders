import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ContentService } from 'src/app/services/content.service';
import { LoginResult } from 'src/app/models/loginResult';
import { ContentFile } from 'src/app/models/contentFile';
import { LoginService } from 'src/app/services/login.service';
import { ContentDTO } from 'src/app/models/contentDTO';
import { ImageService } from 'src/app/services/image.service';

@Component({
  selector: 'app-home-detail',
  templateUrl: './home-detail.component.html',
  styleUrls: ['./home-detail.component.css']
})
export class HomeDetailComponent implements OnInit {
  id: number;
  currentUser: LoginResult;
  currentContent: ContentDTO;
  currentPage: number = 0;
  constructor(private route: ActivatedRoute, private contentService: ContentService, private loginService: LoginService, public imageService: ImageService) { }
  displayQuestions: Boolean = false;
  ngOnInit(): void {
    this.id = +this.route.snapshot.paramMap.get('id');
    this.currentUser = this.loginService.currentUserValue();
    this.getContentById(this.id);
  }

  nextPage() {
    this.currentPage += 1;
  }

  lastPage() {
    this.currentPage -= 1;
  }

  showQuestions() {
    //update in database in content isfinish
    this.displayQuestions = true;
  }

  getContentById(id: number) {
    this.contentService.getContentById(this.id).then(res => { this.currentContent = res; console.log(this.currentContent); });
  }

}
