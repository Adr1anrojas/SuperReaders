import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';
import { ClassRoomService } from 'src/app/services/class-room.service';
import { ClassRoomDTO } from 'src/app/models/classRoomDTO';
import { ClassRoom } from 'src/app/models/classRoom';
declare var $: any;
@Component({
  selector: 'app-class-room',
  templateUrl: './class-room.component.html',
  styleUrls: ['./class-room.component.css']
})

export class ClassRoomComponent implements OnInit {
  classRooms: ClassRoomDTO[] = [];
  classRoomsCopy: ClassRoomDTO[] = [];
  classRoom: ClassRoomDTO;
  show: boolean;
  quantityStudent: number;
  submitted = false;
  columns: string[] = ["Grupo", "Maestro", "# de Alumnos", "Accion"];
  formClassRoom: FormGroup = new FormGroup({
    id: new FormControl(''),
    name: new FormControl('', Validators.required)
  });
  isUpdate: Boolean = false;

  constructor(private toastr: ToastrService, private classRoomService: ClassRoomService) { }

  ngOnInit(): void {
    this.initClassRoom();
    this.getAllWithInfo();
    this.show = false;
  }

  onSubmit() {
    this.submitted = true;
    if (this.formClassRoom.valid) {
      let classRoom = this.createAnGroup();
      if (classRoom.id === 0) {
        this.createclassRoom(classRoom);
      } else
        this.updateclassRoom(classRoom);
    }
  }

  initClassRoom() {
    this.submitted = false;
    this.isUpdate = false;
    this.formClassRoom.reset();
  }

  get controls() {
    return this.formClassRoom.controls;
  }

  getAllWithInfo() {
    this.classRoomService.getAllWithInfo().subscribe((res: ClassRoomDTO[]) => {
      this.classRoomsCopy = JSON.parse(JSON.stringify(res));
      this.classRooms = res;
    });
  }

  createclassRoom(classRoom: ClassRoom) {
    this.classRoomService.create(classRoom).subscribe(res => {
      this.getAllWithInfo();
      this.initClassRoom();
      $("#exampleModal").modal("hide");
      this.toastr.success('¡Hecho!', 'Se creó un Grupo.');
    }, error => {
      if (error == 'Bad Request')
        this.toastr.error('El Nombre del Grupo ya esta en uso.', '¡Error!');
      else
        this.toastr.error('Ocurrio un problema al crear al Grupo.', '¡Error!');
    });
  }

  updateclassRoom(classRoom: ClassRoom) {
    var classRoomOld = this.classRoomsCopy.find(e => e.id === classRoom.id);
    if (classRoom.name !== classRoomOld.name) {
      this.classRoomService.update(classRoom).subscribe(res => {
        $("#exampleModal").modal("hide");
        this.toastr.success('¡Hecho!', 'Se actualizo el Grupo.');
        this.getAllWithInfo();
        this.initClassRoom();
      }, (error => {
        this.toastr.error('Ocurrio un problema al actualizar el Grupo.', '¡Error!');
      }));
    } else
      this.toastr.error('Se debe modificar al menos un campo.', '¡Error!');
  }

  editClassRoom(e: ClassRoom) {
    this.formClassRoom.patchValue({
      id: e.id,
      name: e.name,
    });
    this.isUpdate = true;
    this.quantityStudent = this.classRoomsCopy.find(copy => copy.id == e.id).quantityStudents;
  }

  createAnGroup(): ClassRoom {
    return {
      id: +this.formClassRoom.get('id').value,
      name: this.formClassRoom.get('name').value,
      status: true
    }
  }

  delete() {
    if (this.quantityStudent == 0) {
      let idclassRoom = this.formClassRoom.get('id').value;
      this.classRoomService.delete(idclassRoom).subscribe(res => {
        this.toastr.success('Hecho', 'Se elimino a un Grupo.');
        this.initClassRoom();
        this.getAllWithInfo();
      }, (error => {
        this.toastr.error('Ocurrio un problema al eliminar al Grupo.', '¡Error!');
        this.initClassRoom();
      }));
    } else
      this.toastr.error('El grupo no debe de tener ningun Alumno.', '¡Error!');
  }

}