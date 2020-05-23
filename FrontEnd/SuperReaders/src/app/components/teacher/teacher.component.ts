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
  teachers: User[] = [];
  teachersCopy: User[] = [];
  classRooms: ClassRoom[] = [];
  teacher: User;
  show: boolean;
  submitted = false;
  columns: string[] = ["Nombres", "Apellidos", "Usuario", "Grupo", "Email", "Accion"];
  selectedMoment = new Date();
  formTeacher: FormGroup = new FormGroup({
    id: new FormControl(''),
    firstName: new FormControl('', Validators.required),
    lastName: new FormControl('', Validators.required),
    userName: new FormControl('', Validators.required),
    email: new FormControl('', [Validators.required, Validators.email]),
    password: new FormControl('', [Validators.required, Validators.minLength(6)]),
    date: new FormControl({ value: '', disabled: true }, Validators.required),
    classRoom: new FormControl('', Validators.required)
  });
  classRoomset: ClassRoom;
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
    if (this.formTeacher.valid && this.isValidDate) {
      let teacher = this.createAnUser();
      if (teacher.id === 0) {
        this.createteacher(teacher);
      } else
        this.updateteacher(teacher);
    }
  }

  initTeacher() {
    this.submitted = false;
    this.isUpdate = false;
    this.formTeacher.reset();
  }

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
      this.teachersCopy = JSON.parse(JSON.stringify(res));
      this.teachers = res;
    });
  }

  getClassRooms() {
    this.classRoomService.getAllAvailable().subscribe((res: ClassRoom[]) => {
      this.classRooms = res;
    });
  }

  createteacher(teacher: User) {
    this.userService.create(teacher).subscribe(res => {
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

  updateteacher(teacher: User) {
    var teacherOld = this.teachersCopy.find(e => e.id === teacher.id);
    if (teacher.firstName !== teacherOld.firstName || teacher.lastName !== teacherOld.lastName || teacher.userName !== teacherOld.userName || teacher.email !== teacherOld.email || teacher.password !== teacherOld.password || teacher.birthDate !== teacherOld.birthDate || teacher.classRoom.id !== teacherOld.classRoom.id) {
      this.userService.update(teacher).subscribe(res => {
        $("#exampleModal").modal("hide");
        this.toastr.success('¡Hecho!', 'Se actualizo un Maestro.');
        this.getTeachers();
        this.getClassRooms();
        this.initTeacher();
      }, (error => {
        if (error == 'Bad Request')
          this.toastr.error('El Nombre de usuario ya esta en uso.', '¡Error!');
        else
          this.toastr.error('Ocurrio un problema al actualizar al Maestro.', '¡Error!');
      }));
    } else
      this.toastr.error('Se debe modificar al menos un campo.', '¡Error!');
  }

  editTeacher(e: User) {
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
    this.userService.delete(idUser, "Teacher").subscribe(res => {
      this.toastr.success('Hecho', 'Se elimino a un Maestro.');
      this.initTeacher();
      this.getTeachers();
      this.getClassRooms();
    }, (error => {
      this.toastr.success('Ocurrio un problema al eliminar al Maestro', '¡Error!');
      this.initTeacher();
    }));
  }

}