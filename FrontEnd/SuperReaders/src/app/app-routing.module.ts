import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './components/login/login.component';
import { HomeComponent } from './components/home/home.component';
import { TeacherComponent } from './components/teacher/teacher.component';
import { StudentComponent } from './components/student/student.component';
import { ReportComponent } from './components/report/report.component';
import { AdminComponent } from "./components/admin/admin.component";
import { ClassRoomComponent } from './components/class-room/class-room.component';
import { ContentComponent } from './components/content/content.component';
import { HomeDetailComponent } from './components/home/home-detail/home-detail.component';
import { ContentDetailComponent } from './components/content/content-detail/content-detail.component';
import { ProfileComponent } from './components/profile/profile.component';

const routes: Routes = [
  { path: '', component: LoginComponent, pathMatch: 'full' },
  { path: 'login', component: LoginComponent },
  { path: 'home', component: HomeComponent },
  { path: 'home/content/:id', component: HomeDetailComponent },
  { path: 'admin', component: AdminComponent },
  { path: 'teacher', component: TeacherComponent },
  { path: 'student', component: StudentComponent },
  { path: 'report', component: ReportComponent },
  { path: 'classRoom', component: ClassRoomComponent },
  { path: 'content', component: ContentComponent },
  { path: 'contentdetail/:id', component: ContentDetailComponent },
  { path: 'profile', component: ProfileComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
