import { Component, OnInit } from '@angular/core';
import { ContentFile } from 'src/app/models/contentFile';
import { Router } from '@angular/router';
import { ContentService } from 'src/app/services/content.service';
import { LoginResult } from 'src/app/models/loginResult';
import { LoginService } from 'src/app/services/login.service';
import { ContentDetail } from 'src/app/models/contentDetail';
import { ImageService } from 'src/app/services/image.service';

@Component({
  selector: 'app-assing',
  templateUrl: './assing.component.html',
  styleUrls: ['./assing.component.css']
})
export class AssingComponent implements OnInit {
  contentAssign: ContentFile[] = [];
  constructor(private router: Router, private contentService: ContentService, private loginService: LoginService, public imageService: ImageService) { }

  ngOnInit(): void {
    this.getAllContentAssign();
  }

  showContent(content: ContentFile) {
    this.router.navigate(['home/content/', content.id]);
  }

  getAllContentAssign() {
    let currentUser: LoginResult = this.loginService.currentUserValue();
    this.contentService.getAllContentAsignByStudent(currentUser.studentId).subscribe((res: ContentFile[]) => {
      this.contentAssign = res;
    });
  }

}
