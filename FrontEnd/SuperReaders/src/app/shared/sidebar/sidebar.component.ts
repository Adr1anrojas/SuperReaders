import { Component, OnInit } from '@angular/core';
declare var $: any;
@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent implements OnInit {
  constructor() { }
  collapsed: Boolean = true;
  ngOnInit(): void {
  }

  isCollapsed() {
    this.collapsed = !this.collapsed;
    $("#wrapper").toggleClass("toggled");
    console.log(this.collapsed);
  }

}
