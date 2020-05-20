export class StudentAnswer {
    id?: number;
    idStudent: number;
    idAnswer: number;
    constructor(idStudent: number, idAnswer: number) {
        this.idStudent = idStudent;
        this.idAnswer = idAnswer;
    }
}