import { Component, OnInit } from '@angular/core';
import { LoginService } from 'src/app/services/login.service';
import { Router } from '@angular/router';
import { LoginResult } from 'src/app/models/loginResult';
import { ContentService } from 'src/app/services/content.service';
import { TypeContent } from 'src/app/models/typeContent';
import { ImageService } from 'src/app/services/image.service';
import { UserService } from 'src/app/services/user.service';
import { ToastrService } from 'ngx-toastr';
import { ContentFile } from 'src/app/models/contentFile';
import { Content } from '@angular/compiler/src/render3/r3_ast';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  currentUser: LoginResult;
  allTypeContent: TypeContent[] = [];
  allContent: TypeContent[] = [];
  contentPreferences: ContentFile[] = [];
  constructor(private loginService: LoginService, private router: Router, private contentService: ContentService, public imgService: ImageService, private toastr: ToastrService) { }

  ngOnInit(): void {
    this.currentUser = this.loginService.currentUserValue();
    if (this.currentUser.isFirstTime && this.currentUser.role == 'Student')
      this.contentService.getTypeContent().subscribe((res: TypeContent[]) => { this.allTypeContent = res; });
    else if (!this.currentUser.isFirstTime && this.currentUser.role == 'Student') {
      this.contentService.getAllContentByPreferenceStudent(this.currentUser.studentId).subscribe((res: ContentFile[]) => { this.contentPreferences = res ? res : []; });
      this.contentService.getAllContentByTypeContent().subscribe((res: TypeContent[]) => { this.allContent = res ? res : []; });
    }
  }

  selectedCategories() {
    let saveTypeContentStudent: TypeContent[] = [];
    this.allTypeContent.forEach(item => {
      if (item.isSelected) {
        item.idStudent = this.currentUser.studentId;
        saveTypeContentStudent.push(item);
      }
    });
    if (saveTypeContentStudent.length > 0)
      this.typeContentStudentServer(saveTypeContentStudent);
    else
      this.toastr.error('Debes seleccionar por lo menos una categoria.', '¡Error!');
  }

  changeStatus(index: number) {
    this.allTypeContent[index].isSelected = !this.allTypeContent[index].isSelected;
  }

  typeContentStudentServer(typeContentStudent: TypeContent[]) {
    this.contentService.createTypeContentStudent(typeContentStudent).subscribe(res => {
      this.currentUser.isFirstTime = false;
      this.loginService.setCurrentUser(this.currentUser);
      this.contentService.getAllContentByPreferenceStudent(this.currentUser.studentId).subscribe((res: ContentFile[]) => {
        this.contentPreferences = res ? res : [];
        this.contentService.getAllContentByTypeContent().subscribe((res: TypeContent[]) => { this.allContent = res; });
      });
    }, error => this.toastr.error('Ocurrio un problema al cargar tus categorias.', '¡Error!'));
  }

  showContent(content: ContentFile) {
    this.router.navigate(['home/content/', content.id]);
  }

}
