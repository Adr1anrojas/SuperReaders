import { Injectable } from '@angular/core';
import { HttpRequest, HttpHandler, HttpEvent, HttpInterceptor } from '@angular/common/http';
import { Observable, throwError } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { LoginService } from 'src/app/services/login.service';
import { NgxSpinnerService } from 'ngx-spinner';
import { ToastrService } from 'ngx-toastr';

@Injectable()
export class ResponseInterceptor implements HttpInterceptor {
    constructor(private authenticationService: LoginService, private spinner: NgxSpinnerService, private toastr: ToastrService) { }

    intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
        setTimeout(() => this.spinner.hide(), 500);
        return next.handle(request).pipe(catchError(err => {
            if (err.status === 401) {
                this.toastr.error('Su sesión ha expirado.', '¡Error!');
                // auto logout if 401 response returned from api
                this.authenticationService.logout();
                location.reload(true);
            }
            const error = err.error.message || err.statusText;
            return throwError(error);
        }))
    }
}