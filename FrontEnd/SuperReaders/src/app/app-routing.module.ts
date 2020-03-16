import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './shared/login/login.component';
import { HomeComponent } from './components/home/home.component';
import { TeacherComponent } from './components/teacher/teacher.component';
import { StudentComponent } from './components/student/student.component';
import { ReportComponent } from './components/report/report.component';


const routes: Routes = [
  { path: '', component: HomeComponent },
  { path: 'home', component: HomeComponent },
  { path: 'teacher', component: TeacherComponent },
  { path: 'student', component: StudentComponent },
  { path: 'report', component: ReportComponent },
  { path: 'login', component: LoginComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
