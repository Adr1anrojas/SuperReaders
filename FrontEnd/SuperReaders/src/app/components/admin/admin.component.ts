import { Component, OnInit } from '@angular/core';
// import { ToastrService } from 'ngx-toastr';
import { User } from 'src/app/models/user';
import { AdminService } from '../../services/admin.service';
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';
@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.css']
})

export class AdminComponent implements OnInit {
  admins: User[] = [];
  adminsCopy: User[] = [];
  admin: User;
  show: boolean;
  columns: string[] = ["Nombres", "Apellidos", "Usuario", "Status", "Accion"];
  selectedMoment = new Date();
  firstName: FormControl;
  lastName: FormControl;
  userName: FormControl;
  email: FormControl;
  password: FormControl;
  userForm: FormGroup;
  constructor(private toastr: ToastrService, private adminService: AdminService, private fb: FormBuilder) { }

  ngOnInit(): void {
    this.firstName = new FormControl({ value: '' }, Validators.required);
    this.lastName = new FormControl({ value: '' }, Validators.required);
    this.userName = new FormControl({ value: '' }, Validators.required);
    this.email = new FormControl({ value: '' }, [Validators.required, Validators.email]);
    this.password = new FormControl({ value: '' }, Validators.required);
    this.initAdmin();
    this.getAdmins();
    this.show = false;
  }

  onSubmit() {
    if (this.onSubmitStatus()) {
      if (this.admin.id === 0) {
        console.log("crear");
        console.log(this.admin);
        this.createadmin(this.admin);
      } else {
        this.updateadmin(this.admin);
      }
    } else
      this.validateForm();
  }

  createadmin(admin: User) {
    this.adminService.create(this.admin).subscribe(res => {
      this.getAdmins();
      this.initAdmin();
      this.toastr.success('Hecho', 'Se creó un Administrador.');
    }, error => this.toastr.error('Error', 'Ocurrio un problema al crear al Administrador.'));
  }

  updateadmin(admin: User) {
    var adminOld = this.adminsCopy.find(e => e.id === admin.id);
    debugger;
    if (this.admin.firstName !== adminOld.firstName || this.admin.lastName !== adminOld.lastName || this.admin.userName !== adminOld.userName || this.admin.password !== adminOld.password) {
      this.adminService.update(this.admin).subscribe(res => {
        this.toastr.success('Hecho', 'Se actualizo un Administrador.');
        this.getAdmins();
        this.initAdmin();
      }, (error => {
        this.toastr.error('Ocurrio un problema al actualizar al Administrador.', '¡Error!');
        this.initAdmin();
      }));
    } else
      this.toastr.error('Se debe modificar al menos un campo.', '¡Error!');
  }

  getAdmins() {
    this.adminService.getAll().subscribe((res: User[]) => {
      this.adminsCopy = JSON.parse(JSON.stringify(res));
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
      role: "Admin",
      password: "",
      birthDate: new Date(),
      idSchool: 1,
      status: true
    };
    this.firstName.reset();
    this.lastName.reset();
    this.userName.reset();
    this.email.reset();
    this.password.reset();
  }

  validateForm() {
    console.log("asd");
    let opts = { onlySelf: true };
    this.admin.firstName === '' || !this.admin.firstName ? this.firstName.markAsTouched(opts) : this.firstName.setErrors({ 'incorrect': false })
    this.admin.lastName === '' || !this.admin.lastName ? this.lastName.markAsTouched(opts) : this.lastName.setErrors({ 'incorrect': false })
    this.admin.userName === '' || !this.admin.userName ? this.userName.markAsTouched(opts) : this.userName.setErrors({ 'incorrect': false })
    this.admin.password === '' || !this.admin.password ? this.password.markAsTouched(opts) : this.password.setErrors({ 'incorrect': false })
    if (!this.email.touched && this.admin.email == '')
      this.email.markAsTouched(opts);
  }
  // click event function toggle
  showPassword() {
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

  onSubmitStatus(): Boolean {
    if (this.admin.firstName != '' && this.admin.lastName != '' && this.admin.userName != '' && this.admin.email != '' && this.admin.password != '')
      return true;
    return false;
  }

}