import { Component, OnInit } from '@angular/core';
import { User } from 'src/app/models/user';
import { ClassRoom } from 'src/app/models/classRoom';
import { FormGroup, Validators, FormControl } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';
import { UserService } from 'src/app/services/user.service';
import { ClassRoomService } from 'src/app/services/class-room.service';
import { LoginService } from 'src/app/services/login.service';
import { LoginResult } from 'src/app/models/loginResult';
declare var $: any;
@Component({
  selector: 'app-student',
  templateUrl: './student.component.html',
  styleUrls: ['./student.component.css']
})
export class StudentComponent implements OnInit {
  students: User[] = [];
  studentsCopy: User[] = [];
  classRooms: ClassRoom[] = [];
  student: User;
  show: boolean;
  submitted = false;
  columns: string[] = ["Nombres", "Apellidos", "Usuario", "Grupo", "Accion"];
  selectedMoment = new Date();
  formStudent: FormGroup = new FormGroup({
    id: new FormControl(''),
    firstName: new FormControl('', Validators.required),
    lastName: new FormControl('', Validators.required),
    userName: new FormControl('', Validators.required),
    password: new FormControl('', [Validators.required, Validators.minLength(6)]),
    date: new FormControl({ value: '', disabled: true }, Validators.required),
    classRoom: new FormControl('', Validators.required),
  });
  classRoomSearch = new FormControl('', Validators.required)
  groupSelected: ClassRoom;
  currentUser: LoginResult;
  isUpdate: Boolean = false;

  constructor(private toastr: ToastrService, private userService: UserService, private classRoomService: ClassRoomService, private loginService: LoginService) { }

  ngOnInit(): void {
    this.currentUser = this.loginService.currentUserValue();
    this.initStudent();
    if (this.currentUser.role === "Admin")
      this.getClassRooms();
    else
      this.getAllStudentsByClassRoom();
    this.show = false;
  }

  onSubmit() {
    this.submitted = true;
    this.checkRole();
    if (this.formStudent.valid && this.isValidDate) {
      let student = this.createAnUser();
      if (student.id === 0) {
        this.createstudent(student);
      } else
        this.updatestudent(student);
    }
  }

  searchStudents() {
    if (this.classRoomSearch.value)
      this.getAllStudentsByClassRoom();
    else
      this.classRoomSearch.markAsTouched({ onlySelf: true });
  }

  get idGroupSearch(): number {
    return this.currentUser.role === 'Admin' ? this.classRoomSearch.value.id : this.currentUser.classRoom.id;
  }

  initStudent() {
    this.submitted = false;
    this.isUpdate = false;
    this.formStudent.reset();
  }

  checkRole() {
    if (this.currentUser.role === "Teacher")
      this.formStudent.get('classRoom').setValue(this.currentUser.classRoom, {
        onlyself: true
      });
  }

  showPassword() {
    this.show = !this.show;
  }

  get controls() {
    return this.formStudent.controls;
  }

  get isValidDate(): Boolean {
    return this.formStudent.get('date').value !== null;
  }

  getAllStudentsByClassRoom() {
    this.userService.getAllStudentsByClassRoom(this.idGroupSearch).subscribe((res: User[]) => {
      this.studentsCopy = JSON.parse(JSON.stringify(res));
      this.students = res;
    });
  }

  getClassRooms() {
    this.classRoomService.getAll().subscribe((res: ClassRoom[]) => {
      this.classRooms = res;
    });
  }

  createstudent(student: User) {
    this.userService.create(student).subscribe(res => {
      this.getAllStudentsByClassRoom();
      this.initStudent();
      $("#exampleModal").modal("hide");
      this.toastr.success('¡Hecho!', 'Se creó un Estudiante.');
    }, error => {
      if (error == 'Bad Request')
        this.toastr.error('El Nombre de usuario ya esta en uso.', '¡Error!');
      else
        this.toastr.error('Ocurrio un problema al crear al Estudiante.', '¡Error!');
    });
  }

  updatestudent(student: User) {
    var studentOld = this.studentsCopy.find(e => e.id === student.id);
    if (student.firstName !== studentOld.firstName || student.lastName !== studentOld.lastName || student.userName !== studentOld.userName || student.password !== studentOld.password || student.birthDate !== studentOld.birthDate) {
      this.userService.update(student).subscribe(res => {
        $("#exampleModal").modal("hide");
        this.toastr.success('¡Hecho!', 'Se actualizo un Estudiante.');
        this.getAllStudentsByClassRoom();
        this.initStudent();
      }, (error => {
        if (error == 'Bad Request')
          this.toastr.error('El Nombre de usuario ya esta en uso.', '¡Error!');
        else
          this.toastr.error('Ocurrio un problema al actualizar al Estudiante.', '¡Error!');
      }));
    } else
      this.toastr.error('Se debe modificar al menos un campo.', '¡Error!');
  }

  editStudent(e: User) {
    this.formStudent.patchValue({
      id: e.id,
      firstName: e.firstName,
      lastName: e.lastName,
      userName: e.userName,
      password: e.password,
      date: e.birthDate,
      classRoom: e.classRoom,
    });
    this.isUpdate = true;
  }

  createAnUser(): User {
    return {
      id: +this.formStudent.get('id').value,
      firstName: this.formStudent.get('firstName').value,
      lastName: this.formStudent.get('lastName').value,
      userName: this.formStudent.get('userName').value,
      role: "Student",
      password: this.formStudent.get('password').value,
      birthDate: this.formStudent.get('date').value,
      idSchool: 1,
      status: true,
      classRoom: this.formStudent.get('classRoom').value
    }
  }

  delete() {
    let idUser = this.formStudent.get('id').value;
    this.userService.delete(idUser, "Student").subscribe(res => {
      this.toastr.success('Hecho', 'Se elimino a un Estudiante.');
      this.initStudent();
      this.getAllStudentsByClassRoom();
    }, (error => {
      this.toastr.success('Ocurrio un problema al eliminar al Estudiante', '¡Error!');
      this.initStudent();
    }));
  }

}