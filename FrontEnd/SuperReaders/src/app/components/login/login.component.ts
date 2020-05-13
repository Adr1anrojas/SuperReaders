import { Component, OnInit, HostListener } from '@angular/core';
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';
import { LoginCredential } from 'src/app/models/loginCredential';
import { LoginService } from 'src/app/services/login.service';
import { LoginResult } from 'src/app/models/loginResult';
import { Router } from '@angular/router';
import { Pipe, PipeTransform } from '@angular/core';
import { first } from 'rxjs/operators';
import { ToastrService } from 'ngx-toastr';
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  formLogin: FormGroup = new FormGroup({
    userName: new FormControl('', [Validators.required]),
    password: new FormControl('', [Validators.required])
  });
  userCredential: LoginCredential;
  submitted = false;
  public innerWidth: any;
  @HostListener('window:resize', ['$event'])
  onResize(event) { this.innerWidth = window.innerWidth; }
  isMovil: boolean = false;
  constructor(private loginService: LoginService, private router: Router, private toastr: ToastrService) { }

  ngOnInit(): void {
    if (this.loginService.isLogged)
      this.router.navigate(['/home']);
    this.innerWidth = window.innerWidth;
    console.log(this.innerWidth);
    if (this.innerWidth <= 768)
      this.isMovil = true;
  }

  onSubmit() {
    this.submitted = true;
    if (this.formLogin.valid) {
      this.userCredential = {
        userName: this.formLogin.get('userName').value,
        password: this.formLogin.get('password').value,
        refreshToken: ""
      };
      this.login(this.userCredential);
    }
  }

  login(userCredential: LoginCredential) {
    this.loginService.login(userCredential).pipe(first())
      .subscribe(
        data => {
          this.toastr.success('Autentificacion exitosa.', '¡Bienvenido!');
          this.router.navigate(['/home']);
        }, () => this.toastr.error('Nombre de usuario o contraseña incorrecta.', '¡Error!'));
  }

  get controls() {
    return this.formLogin.controls;
  }

}
