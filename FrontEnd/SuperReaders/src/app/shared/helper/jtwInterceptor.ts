import { Injectable } from '@angular/core';
import { HttpRequest, HttpHandler, HttpEvent, HttpInterceptor } from '@angular/common/http';
import { Observable } from 'rxjs';
import { LoginService } from 'src/app/services/login.service';
import { NgxSpinnerService } from 'ngx-spinner';

@Injectable()
export class JwtInterceptor implements HttpInterceptor {
    constructor(private authenticationService: LoginService) { }

    intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
        // setTimeout(() => this.spinner.show(), 1);
        // add authorization header with jwt token if available
        let currentUser = this.authenticationService.currentUserValue();
        if (currentUser && currentUser.token) {
            request = request.clone({
                setHeaders: {
                    'Set-Cookie': 'SameSite=None;Secure',
                    'Content-Type': 'application/json',
                    Authorization: `Bearer ${currentUser.token}`
                }
            });
        }
        return next.handle(request);
    }
}