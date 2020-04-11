import { Component, OnInit } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { UserService } from 'src/app/services/user.service';
import { FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { User } from 'src/app/models/user';
import { ClassRoomService } from 'src/app/services/class-room.service';
import { ClassRoom } from 'src/app/models/classRoom';
declare var $: any;
@Component({
  selector: 'app-teacher',
  templateUrl: './teacher.component.html',
  styleUrls: ['./teacher.component.css']
})
export class TeacherComponent implements OnInit {
  admins: User[] = [];
  adminsCopy: User[] = [];
  classRooms: ClassRoom[] = [];
  admin: User;
  show: boolean;
  submitted = false;
  columns: string[] = ["Nombres", "Apellidos", "Usuario", "Grupo", "Status", "Accion"];
  selectedMoment = new Date();
  formTeacher: FormGroup = new FormGroup({
    id: new FormControl(''),
    firstName: new FormControl('', Validators.required),
    lastName: new FormControl('', Validators.required),
    userName: new FormControl('', Validators.required),
    email: new FormControl('', [Validators.required, Validators.email]),
    password: new FormControl('', Validators.required),
    date: new FormControl({ value: '', disabled: true }, Validators.required),
    classRoom: new FormControl('', Validators.required)
  });
  isUpdate: Boolean = false;

  constructor(private toastr: ToastrService, private userService: UserService, private classRoomService: ClassRoomService) { }

  ngOnInit(): void {
    this.initTeacher();
    this.getTeachers();
    this.getClassRooms();
    this.show = false;
  }

  onSubmit() {
    this.submitted = true;
    console.log(this.isValidDate);
    console.log(this.createAnUser());
    if (this.formTeacher.valid && this.isValidDate) {
      let admin = this.createAnUser();
      if (admin.id === 0) {
        console.log("crear");
        console.log(admin);
        this.createadmin(admin);
      } else
        this.updateadmin(admin);
    }
  }

  initTeacher() {
    this.submitted = false;
    this.isUpdate = false;
    this.formTeacher.reset();
  }

  initClassRoom(e: ClassRoom) {
    this.formTeacher.get('classRoom').setValue(e, {
      onlyself: true
    });
  }
  // click event function toggle
  showPassword() {
    this.show = !this.show;
  }

  get controls() {
    return this.formTeacher.controls;
  }

  get isValidDate(): Boolean {
    return this.formTeacher.get('date').value !== null;
  }

  getTeachers() {
    this.userService.getAllTeachers().subscribe((res: User[]) => {
      this.adminsCopy = JSON.parse(JSON.stringify(res));
      this.admins = res;
      console.log(this.admins);
    });
  }

  getClassRooms() {
    this.classRoomService.getAll().subscribe((res: ClassRoom[]) => {
      this.classRooms = res;
    });
  }

  createadmin(admin: User) {
    this.userService.create(admin).subscribe(res => {
      this.getTeachers();
      this.initTeacher();
      $("#exampleModal").modal("hide");
      this.toastr.success('¡Hecho!', 'Se creó un Maestro.');
      this.getClassRooms();
    }, error => {
      if (error == 'Bad Request')
        this.toastr.error('El Nombre de usuario ya esta en uso.', '¡Error!');
      else
        this.toastr.error('Ocurrio un problema al crear al Maestro.', '¡Error!');
    });
  }

  updateadmin(admin: User) {
    var adminOld = this.adminsCopy.find(e => e.id === admin.id);
    if (admin.firstName !== adminOld.firstName || admin.lastName !== adminOld.lastName || admin.userName !== adminOld.userName || admin.email !== adminOld.email || admin.password !== adminOld.password || admin.birthDate !== adminOld.birthDate) {
      this.userService.update(admin).subscribe(res => {
        $("#exampleModal").modal("hide");
        this.toastr.success('¡Hecho!', 'Se actualizo un Maestro.');
        this.getTeachers();
        this.initTeacher();
      }, (error => {
        this.toastr.error('Ocurrio un problema al actualizar al Maestro.', '¡Error!');
      }));
    } else
      this.toastr.error('Se debe modificar al menos un campo.', '¡Error!');
  }

  editTeacher(e: User) {
    console.log("edit ", e.classRoom);
    this.formTeacher.patchValue({
      id: e.id,
      firstName: e.firstName,
      lastName: e.lastName,
      userName: e.userName,
      email: e.email,
      password: e.password,
      date: e.birthDate,
      classRoom: e.classRoom
    });
    this.isUpdate = true;
    this.initClassRoom(e.classRoom);
  }
  classRoomChange(e) {
    console.log("change", e);
  }
  createAnUser(): User {
    return {
      id: +this.formTeacher.get('id').value,
      firstName: this.formTeacher.get('firstName').value,
      lastName: this.formTeacher.get('lastName').value,
      userName: this.formTeacher.get('userName').value,
      email: this.formTeacher.get('email').value,
      role: "Teacher",
      password: this.formTeacher.get('password').value,
      birthDate: this.formTeacher.get('date').value,
      idSchool: 1,
      status: true,
      classRoom: this.formTeacher.get('classRoom').value
    }
  }

  delete() {
    let idUser = this.formTeacher.get('id').value;
    this.userService.delete(idUser).subscribe(res => {
      this.toastr.success('Hecho', 'Se elimino a un Maestro.');
      this.initTeacher();
      this.getTeachers();
    }, (error => {
      this.toastr.success('Ocurrio un problema al eliminar al Maestro', '¡Error!');
      this.initTeacher();
    }));
  }

}