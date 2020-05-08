import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ContentService } from 'src/app/services/content.service';
import { ContentFile } from 'src/app/models/contentFile';
import { DomSanitizer } from '@angular/platform-browser';
import { ImageService } from 'src/app/services/image.service';
import { ToastrService } from 'ngx-toastr';
declare var $: any;
@Component({
  selector: 'app-content',
  templateUrl: './content.component.html',
  styleUrls: ['./content.component.css']
})
export class ContentComponent implements OnInit {
  content: ContentFile[] = [];
  currentContent: ContentFile = new ContentFile();
  base64textString: string;
  imgUrl: any[] = [];
  constructor(private route: Router, private contentService: ContentService, private domSanitizer: DomSanitizer, public imgService: ImageService, private toastr: ToastrService) { }

  ngOnInit(): void {
    this.getContents();
  }

  getContents() {
    this.contentService.getAllContent().subscribe((res: ContentFile[]) => {
      this.content = res;
    }, error => console.log(error));
  }

  handleFile(item) {
    return this.imgService.convertBase64ToImage(item);
  }

  editContent(item: ContentFile) {
    this.route.navigate(['contentdetail', item.id]);
  }

  showModalDelete(item: ContentFile) {
    this.currentContent = item;
    $("#myModal").modal("show");
  }

  deleteContent() {
    this.contentService.delete(this.currentContent.id).subscribe(res => {
      this.getContents();
      this.toastr.success('¡Hecho!', 'Se elimino el Contenido.');
    }, error => this.toastr.error('Ocurrio un problema al eliminar el Contenido.', '¡Error!'));
  }

}
