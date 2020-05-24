import { Component, OnInit } from '@angular/core';
import { UserService } from 'src/app/services/user.service';
import { ClassRoomService } from 'src/app/services/class-room.service';
import { LoginService } from 'src/app/services/login.service';
import { LoginResult } from 'src/app/models/loginResult';
import { ClassRoom } from 'src/app/models/classRoom';
import { User } from 'src/app/models/user';
import { FormGroup, Validators, FormControl, FormsModule } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';
import { DIR_DOCUMENT_FACTORY } from '@angular/cdk/bidi/dir-document-token';


declare var $: any;

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})

export class ProfileComponent implements OnInit {
  groupSelected: ClassRoom;
  currentUser: LoginResult;
  fechasuprema: Date; 
  teachers: User[] = [];
  studentsCopy: User[] = [];
  admins: User[] = [];
  adminsCopy: User[] = [];
  students: User[] = [];
  teachersCopy: User[] = [];
  submitted = false;
  classRoomSearch = new FormControl('', Validators.required)

  constructor( private toastr: ToastrService,private userService: UserService, private classRoomService: ClassRoomService, private loginService: LoginService) { 


  }

  onSubmit() {
    this.submitted = true;
    //if (this.formTeacher.valid ) {
    //let teacher = this.createAnUser();
     //this.updateteacher(teacher);
    //}
    //else{
    //}
  }

  ngOnInit(): void {




    const usuario = JSON.parse(localStorage.getItem('currentUser'));
    console.log(usuario);

    const username = usuario['userName'];
    const email = usuario['email'];
    const role = usuario['role'];
    const fullname = usuario['firstName']+" "+ usuario['lastName'];

      
    document.getElementById('prueba3').innerHTML = fullname;
    document.getElementById('username2').innerHTML = username;
    document.getElementById('email').innerHTML = email;

    if(role !=="Admin"){
      const group = usuario['classRoom'].name;
      document.getElementById('classroom').innerHTML = group;

    }else{
    document.getElementById('grupo1').innerHTML ="";
    document.getElementById("datosEsc").innerHTML ="";
  }
  if(role !=='Teacher'){
  document.getElementById('actrec').innerHTML ="";
}



    (<HTMLInputElement>document.getElementById("ban1")).value = usuario['firstName'];
    (<HTMLInputElement>document.getElementById("ban2")).value = usuario['lastName'];
    (<HTMLInputElement>document.getElementById("ban3")).value = email;
    (<HTMLInputElement>document.getElementById("ban4")).value = username;


     var img =  (<HTMLInputElement>document.getElementById("Imagen"));

     const idusuario = usuario['id'];


    if (role == "Teacher") {
      document.getElementById('rol2').innerHTML = "Maestro";
      img.src =" https://cdn.pixabay.com/photo/2017/10/04/12/40/teacher-2816112_960_720.jpg";
    
      var bandera;
      this.userService.getAllTeachers().subscribe((res: User[]) => {
        bandera= this.teachersCopy;
        bandera= JSON.parse(JSON.stringify(res));
        this.teachers = res;


        for (var i = 0; i <= this.teachers.length; i++) {
          if( this.teachers[i].id === idusuario){
     
           var id3 =  this.teachers[i].birthDate;
           var fecha = id3.toString();
           this.fechasuprema = id3;
           fecha = fecha.substring(0,10)
           document.getElementById('fechanaci').innerHTML = fecha;
     
           
          }
         }
      });


    }else if (role == "Student") {
      document.getElementById('rol2').innerHTML = "Estudiante";
      img.src ="https://cdn.pixabay.com/photo/2014/04/03/10/49/boy-311392_960_720.png";
      var bandera;
      this.userService.getAllStudentsByClassRoom(1).subscribe((res: User[]) => {
       bandera = this.studentsCopy;

        bandera = JSON.parse(JSON.stringify(res));

        this.students = res;



        for (var i = 0; i <= this.students.length; i++) {
          if( this.students[i].id === idusuario){
     
           var id3 =  this.students[i].birthDate;
           var fecha = id3.toString();
           this.fechasuprema = id3;
           fecha = fecha.substring(0,10)
           document.getElementById('fechanaci').innerHTML = fecha;
     
           
          }
         }
      });
      


     

    } else {
      document.getElementById('rol2').innerHTML = "Administrador";
      img.src = "https://cdn.pixabay.com/photo/2013/07/13/13/38/man-161282_960_720.png";

  
        

         var bandera;

      this.userService.getAllAdmins().subscribe((res: User[]) => {
        bandera = this.adminsCopy;
        bandera = JSON.parse(JSON.stringify(res));
        this.admins = res;

        console.log(this.admins.length);

        for (var i = 0; i <  this.admins.length; i++) {
          if(  this.admins[i].id === idusuario){
     
           var id3 =   this.admins[i].birthDate;
           var fecha = id3.toString();
           this.fechasuprema = id3;
           fecha = fecha.substring(0,10)
           document.getElementById('fechanaci').innerHTML = fecha;
     
           
          }
         }

      });
    }
  }
 
 
 
  
  ejecutar(){
    const usuario = JSON.parse(localStorage.getItem('currentUser'));
    let Userr = this.createAnUser();

    var teacher2 = Userr['firstName'];
    if(teacher2.length==0){
      alert("Error al introducir el Nombre");
      return;
    }
    teacher2 = Userr['lastName'];

    if(teacher2.length==0){
      alert("Error al introducir los Apellidos");
      return;
    }

    teacher2 = Userr['userName'];

    if(teacher2.length==0){
      alert("Error al introducir el Nombre de Usuario");
      return;
    }

    teacher2 = Userr['email'];

    if(!teacher2.includes("@")){
      alert("Error al introducir el correo electronico");
      return;
    }

    console.log(teacher2);

    const role = usuario['role'];

    if (role == "Teacher") {
      this.updateteacher(Userr);
    }else if (role == "Student") {
      this.updateStudent(Userr);
    } else {
      this.updateAdmin(Userr);
    }

  }

  updateteacher(teacher: User) {
 
    this.userService.update(teacher).subscribe(res => {
        this.toastr.success('¡Hecho!', 'Se actualizo un Maestro.');
      }, (error => {
        this.toastr.error('Ocurrio un problema al actualizar al Maestro.', '¡Error!');
      }));
    //} else
     // this.toastr.error('Se debe modificar al menos un campo.', '¡Error!');
  }

  updateStudent(teacher: User) {

    this.userService.update(teacher).subscribe(res => {
        this.toastr.success('¡Hecho!', 'Se actualizo un Estudiante.');
      }, (error => {
        this.toastr.error('Ocurrio un problema al actualizar al Estudiante.', '¡Error!');
      }));
    //} else
     // this.toastr.error('Se debe modificar al menos un campo.', '¡Error!');
  }

  updateAdmin(teacher: User) {

    this.userService.update(teacher).subscribe(res => {
        this.toastr.success('¡Hecho!', 'Se actualizo un Administrador.');
      }, (error => {
        this.toastr.error('Ocurrio un problema al actualizar al Administrador.', '¡Error!');
      }));
    //} else
     // this.toastr.error('Se debe modificar al menos un campo.', '¡Error!');
  }
 

  createAnUser(): User {
    const usuario = JSON.parse(localStorage.getItem('currentUser'));
    var fecha = new Date(); //Fecha actual
    
    var usuarioo = usuario['role'];
    var nombre =  (<HTMLInputElement>document.getElementById("ban1")).value;
    var apellido =(<HTMLInputElement>document.getElementById("ban2")).value;
    var email2 = (<HTMLInputElement>document.getElementById("ban3")).value;
    var  nombreUsuario =(<HTMLInputElement>document.getElementById("ban4")).value;
    return {
      id: usuario['id'],
      firstName: nombre,
      lastName:  apellido,
      userName: nombreUsuario,
      email: email2,
      role: usuarioo,
      birthDate: this.fechasuprema,
      idSchool: 1,
      status: true,
      classRoom: usuario['classRoom']
    }
  }

 
 
 
  }



 