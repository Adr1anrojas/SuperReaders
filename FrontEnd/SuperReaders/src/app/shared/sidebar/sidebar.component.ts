import { Component, OnInit } from '@angular/core';
import { FaIconLibrary, FaConfig } from '@fortawesome/angular-fontawesome';
import { faHome } from '@fortawesome/free-solid-svg-icons';
declare var $: any;
@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent implements OnInit {
  constructor(faConfig: FaConfig) {
    faConfig.fixedWidth = true;
  }
  collapsed: Boolean = true;
  ngOnInit(): void {
  }

  isCollapsed() {
    this.collapsed = !this.collapsed;
    $("#wrapper").toggleClass("toggled");
    console.log(this.collapsed);
  }

}
