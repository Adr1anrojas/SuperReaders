import { Component, OnInit } from '@angular/core';
// import { ToastrService } from 'ngx-toastr';
import { User } from 'src/app/models/user';
import { AdminService } from '../../services/admin.service';

@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.css']
})

export class AdminComponent implements OnInit {
  admins: User[] = [];
  admin: User;
  show: boolean;
  columns: string[] = ["Nombres", "Apellidos", "Usuario", "Status", "Accion"];
  constructor(/*private toastr: ToastrService, */private adminService: AdminService) { }

  ngOnInit(): void {
    this.initAdmin();
    this.getAdmins();
    this.show = false;
  }

  saveAdmin() {
    if (this.admin.id === 0) {
      console.log("crear");
      this.createadmin(this.admin);
    } else {
      this.updateadmin(this.admin);
    }
  }

  createadmin(admin: User) {
    this.adminService.create(this.admin).subscribe(res => {
      // this.toastr.success('Hecho', 'Se creó un Administrador.');
      this.getAdmins();
      this.initAdmin();
    });
  }

  updateadmin(admin: User) {
    this.adminService.update(this.admin).subscribe(res => {
      // this.toastr.success('Hecho', 'Se actualizo un Administrador.');
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
      id: 0,
      firstName: "",
      lastName: "",
      userName: "",
      email: "",
      role: "",
      password: "",
      birthDate: new Date(),
      idSchool: 0,
      status: true
    };
  }

  // click event function toggle
  password() {
    this.show = !this.show;
  }

  delete() {
    console.log(this.admin);
    this.adminService.delete(this.admin).subscribe(res => {
      // this.toastr.success('Hecho', 'Se elimino un Administrador.');
      this.initAdmin();
      this.getAdmins();
    }, (error => {
      this.initAdmin();
    }));
  }

}