import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ContentService } from 'src/app/services/content.service';
import { ContentFile } from 'src/app/models/contentFile';
import { DomSanitizer } from '@angular/platform-browser';

@Component({
  selector: 'app-content',
  templateUrl: './content.component.html',
  styleUrls: ['./content.component.css']
})
export class ContentComponent implements OnInit {
  content: ContentFile[] = [];
  base64textString: string;
  imgUrl: any[] = [];
  constructor(private route: Router, private contentService: ContentService, private domSanitizer: DomSanitizer) { }

  ngOnInit(): void {
    this.getContents();
  }

  getContents() {
    this.contentService.getAllContent().subscribe((res: ContentFile[]) => {
      this.content = res;
      console.log(this.content);
    }, error => console.log(error));
  }

  handleFile(item) {
    return 'data:image/jpeg;base64,' + (this.domSanitizer.bypassSecurityTrustResourceUrl(item) as any).changingThisBreaksApplicationSecurity;
  }

}
