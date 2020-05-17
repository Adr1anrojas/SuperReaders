import { ContentFile } from './contentFile';

export class TypeContent {
    id: number;
    idStudent: number;
    name: string;
    isSelected: Boolean;
    img: string;
    contents?: ContentFile[];
}