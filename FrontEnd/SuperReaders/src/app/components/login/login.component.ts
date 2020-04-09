import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';
import { LoginCredential } from 'src/app/models/loginCredential';
import { LoginService } from 'src/app/services/login.service';
import { LoginResult } from 'src/app/models/loginResult';
import { Router } from '@angular/router';
import { Pipe, PipeTransform } from '@angular/core';
import { first } from 'rxjs/operators';
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
  constructor(private fb: FormBuilder, private loginService: LoginService, private router: Router) { }

  ngOnInit(): void {
    if (this.loginService.isLogged)
      this.router.navigate(['/home']);
  }

  onSubmit() {
    this.userCredential = {
      userName: this.formLogin.get('userName').value,
      password: this.formLogin.get('password').value,
      refreshToken: ""
    };
    this.login(this.userCredential);
  }

  login(userCredential: LoginCredential) {
    this.loginService.login(userCredential).pipe(first())
      .subscribe(
        data => {
          this.router.navigate(['/home']);
        }, () => console.log("Usuario o contrasena invalida"));
  }
}
