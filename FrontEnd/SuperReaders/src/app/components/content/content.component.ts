import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ContentService } from 'src/app/services/content.service';
import { ContentFile } from 'src/app/models/contentFile';
import { DomSanitizer } from '@angular/platform-browser';
import { ImageService } from 'src/app/services/image.service';
import { ToastrService } from 'ngx-toastr';
import { ContentDetail } from 'src/app/models/contentDetail';
import { LoginResult } from 'src/app/models/loginResult';
import { LoginService } from 'src/app/services/login.service';
import { NgxSpinnerService } from 'ngx-spinner';
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
  constructor(private route: Router, private contentService: ContentService, private domSanitizer: DomSanitizer, public imgService: ImageService, private toastr: ToastrService, private loginService: LoginService, private spinner: NgxSpinnerService) { }

  ngOnInit(): void {
    this.getContents();
  }

  getContents() {
    setTimeout(() => this.spinner.show(), 3);
    this.contentService.getAllContent().subscribe((res: ContentFile[]) => {
      this.content = res;
      this.spinner.hide();
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

  showModalAssing(item: ContentFile) {
    this.currentContent = item;
    $("#asignContent").modal("show");
  }

  asignContentByGroup() {
    let currentUser: LoginResult = this.loginService.currentUserValue();
    let contentAsign: ContentDetail = { idClassRoom: currentUser.classRoom.id, idContent: this.currentContent.id, isAssignment: true };
    this.contentService.asignContentByGroup(contentAsign).subscribe(res => {
      if (res == 0)
        this.toastr.success('¡Hecho!', 'Se quito el Contenido.');
      else
        this.toastr.success('¡Hecho!', 'Se agrego el Contenido.');
    }, error => this.toastr.error('Ocurrio un problema al asignar el Contenido.', '¡Error!'));
  }


}
