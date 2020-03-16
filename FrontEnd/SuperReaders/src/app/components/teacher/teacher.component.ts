import { Component, OnInit } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { User } from 'src/app/models/user';
import { TeacherService } from 'src/app/services/teacher.service';
@Component({
  selector: 'app-teacher',
  templateUrl: './teacher.component.html',
  styleUrls: ['./teacher.component.css']
})
export class TeacherComponent implements OnInit {
  admins: User[] = [];
  admin: User;
  show: boolean;
  constructor(private toastr: ToastrService, private teacherService: TeacherService) { }

  ngOnInit(): void {
    this.initAdmin();
    this.getAdmins();
    this.show = false;
  }

  saveAdmin() {
    if (this.admin.idUser === 0) {
      console.log("crear");
      this.createadmin(this.admin);
    } else {
      this.updateadmin(this.admin);
    }
  }

  createadmin(admin: User) {
    this.adminService.create(this.admin).subscribe(res => {
      this.toastr.success('Hecho', 'Se creó un Administrador.');
      this.getAdmins();
      this.initAdmin();
    });
  }

  updateadmin(admin: User) {
    this.adminService.update(this.admin).subscribe(res => {
      this.toastr.success('Hecho', 'Se actualizo un Administrador.');
      this.getAdmins();
      this.initAdmin();
    }, (error => {
      this.initAdmin();
    }));
  }

  getAdmins() {
    this.adminService.getAll().subscribe((res: User[]) => {
      this.admins = res;
      console.log(this.admins);
    });
  }

  editAdmin(e: User) {
    this.admin = e;
    console.log(e);
  }

  initAdmin() {
    this.admin = {
      idUser: 0,
      firstName: "",
      lastName: "",
      email: "",
      password: "",
      status: true,
      idUserType: 3
    };
  }

  // click event function toggle
  password() {
    this.show = !this.show;
  }

  delete() {
    console.log(this.admin);
    this.adminService.delete(this.admin).subscribe(res => {
      this.toastr.success('Hecho', 'Se elimino un Administrador.');
      this.initAdmin();
      this.getAdmins();
    }, (error => {
      this.initAdmin();
    }));
  }

}