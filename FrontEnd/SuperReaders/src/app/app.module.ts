import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './components/home/home.component';
import { NavbarComponent } from './shared/navbar/navbar.component';
import { FooterComponent } from './shared/footer/footer.component';
import { SidebarComponent } from './shared/sidebar/sidebar.component';
import { LoginComponent } from './shared/login/login.component';
import { FontAwesomeModule, FaIconLibrary } from '@fortawesome/angular-fontawesome';
import { fas } from '@fortawesome/free-solid-svg-icons';
import { StudentComponent } from './components/student/student.component';
import { ContentComponent } from './components/content/content.component';
import { TeacherComponent } from './components/teacher/teacher.component';
import { ReportComponent } from './components/report/report.component';
@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    NavbarComponent,
    FooterComponent,
    SidebarComponent,
    LoginComponent,
    StudentComponent,
    ContentComponent,
    TeacherComponent,
    ReportComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FontAwesomeModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})

export class AppModule {
  constructor(library: FaIconLibrary) {
    library.addIconPacks(fas);
  }
}