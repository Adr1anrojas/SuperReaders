import { Page } from './page';
import { ContentFile } from './contentFile';
import { Question } from './Question';

export class ContentDTO {
    content: ContentFile;
    pages: Page[];
    questions: Question[];
}