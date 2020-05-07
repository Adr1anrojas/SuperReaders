import { Answer } from './answer';

export class Question {
    id: number;
    idContent: number;
    text: string;
    answers: Answer[];
}