import { Component, OnInit } from '@angular/core';
import { User } from 'src/app/models/user';
import { AdminService } from '../../services/admin.service';
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';
declare var $: any;
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
  submitted = false;
  columns: string[] = ["Nombres", "Apellidos", "Usuario", "Status", "Accion"];
  selectedMoment = new Date();
  formAdmin: FormGroup = new FormGroup({
    id: new FormControl(''),
    firstName: new FormControl('', Validators.required),
    lastName: new FormControl('', Validators.required),
    userName: new FormControl('', Validators.required),
    email: new FormControl('', [Validators.required, Validators.email]),
    password: new FormControl('', Validators.required),
    date: new FormControl({ value: '', disabled: true }, Validators.required)
  });
  isUpdate: Boolean = false;

  constructor(private toastr: ToastrService, private adminService: AdminService, private fb: FormBuilder) { }

  ngOnInit(): void {
    this.initAdmin();
    this.getAdmins();
    this.show = false;
  }

  onSubmit() {
    this.submitted = true;
    console.log(this.isValidDate);
    console.log(this.createAnUser());
    if (this.formAdmin.valid && this.isValidDate) {
      let admin = this.createAnUser();
      if (admin.id === 0) {
        console.log("crear");
        console.log(admin);
        this.createadmin(admin);
      } else
        this.updateadmin(admin);
    }
  }

  initAdmin() {
    this.submitted = false;
    this.isUpdate = false;
    this.formAdmin.reset();
  }

  // click event function toggle
  showPassword() {
    this.show = !this.show;
  }

  get controls() {
    return this.formAdmin.controls;
  }

  get isValidDate(): Boolean {
    return this.formAdmin.get('date').value !== null;
  }

  getAdmins() {
    this.adminService.getAll().subscribe((res: User[]) => {
      this.adminsCopy = JSON.parse(JSON.stringify(res));
      this.admins = res;
      console.log(this.admins);
    });
  }

  createadmin(admin: User) {
    this.adminService.create(admin).subscribe(res => {
      this.getAdmins();
      this.initAdmin();
      $("#exampleModal").modal("hide");
      this.toastr.success('¡Hecho!', 'Se creó un Administrador.');
    }, error => {
      if (error == 'Bad Request')
        this.toastr.error('El Nombre de usuario ya esta en uso.', '¡Error!');
      else
        this.toastr.error('Ocurrio un problema al crear al Administrador.', '¡Error!');
    });
  }

  updateadmin(admin: User) {
    var adminOld = this.adminsCopy.find(e => e.id === admin.id);
    if (admin.firstName !== adminOld.firstName || admin.lastName !== adminOld.lastName || admin.userName !== adminOld.userName || admin.email !== adminOld.email || admin.password !== adminOld.password || admin.birthDate !== adminOld.birthDate) {
      this.adminService.update(admin).subscribe(res => {
        $("#exampleModal").modal("hide");
        this.toastr.success('¡Hecho!', 'Se actualizo un Administrador.');
        this.getAdmins();
        this.initAdmin();
      }, (error => {
        this.toastr.error('Ocurrio un problema al actualizar al Administrador.', '¡Error!');
      }));
    } else
      this.toastr.error('Se debe modificar al menos un campo.', '¡Error!');
  }

  editAdmin(e: User) {
    this.formAdmin.patchValue({
      id: e.id,
      firstName: e.firstName,
      lastName: e.lastName,
      userName: e.userName,
      email: e.email,
      password: e.password,
      date: e.birthDate
    });
    this.isUpdate = true;
  }

  createAnUser(): User {
    return {
      id: +this.formAdmin.get('id').value,
      firstName: this.formAdmin.get('firstName').value,
      lastName: this.formAdmin.get('lastName').value,
      userName: this.formAdmin.get('userName').value,
      email: this.formAdmin.get('email').value,
      role: "Admin",
      password: this.formAdmin.get('password').value,
      birthDate: this.formAdmin.get('date').value,
      idSchool: 1,
      status: true
    }
  }

  delete() {
    let idUser = this.formAdmin.get('id').value;
    this.adminService.delete(idUser).subscribe(res => {
      this.toastr.success('Hecho', 'Se elimino a un Administrador.');
      this.initAdmin();
      this.getAdmins();
    }, (error => {
      this.toastr.success('Ocurrio un problema al eliminar al Administrador', '¡Error!');
      this.initAdmin();
    }));
  }

}