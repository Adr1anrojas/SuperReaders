import { Component, OnInit } from '@angular/core';
import { FaConfig } from '@fortawesome/angular-fontawesome';
import { LoginService } from 'src/app/services/login.service';
import { Router } from '@angular/router';
import { LoginResult } from 'src/app/models/loginResult';
declare var $: any;
@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent implements OnInit {
  currentUser: LoginResult;
  constructor(faConfig: FaConfig, private loginService: LoginService) {
    faConfig.fixedWidth = true;
  }
  collapsed: Boolean = true;
  ngOnInit(): void {
    this.currentUser = this.loginService.currentUserValue();
  }

  isCollapsed() {
    this.collapsed = !this.collapsed;
    $("#wrapper").toggleClass("toggled");
  }
  exit() {
    this.loginService.logout();
  }

  fullName() {
    return this.currentUser.firstName + ' ' + this.currentUser.lastName;
  }

}
