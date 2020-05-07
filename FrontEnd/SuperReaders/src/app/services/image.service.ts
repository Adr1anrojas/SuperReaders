import { Injectable } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';

@Injectable({
  providedIn: 'root'
})
export class ImageService {

  constructor(private domSanitizer: DomSanitizer) { }

  convertBase64ToImage(item: string) {
    return 'data:image/jpeg;base64,' + (this.domSanitizer.bypassSecurityTrustResourceUrl(item) as any).changingThisBreaksApplicationSecurity;
  }
}
