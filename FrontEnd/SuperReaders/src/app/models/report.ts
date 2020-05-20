import { Student } from './student';
import { ContentMoreRead } from './contentmoreread';
export class Report {

    averageContentRead: number;
    contentReadFromMoreRead: number;
    sumContentFinished: number;
    sumContentNotFinished: number;
    averageContentNotRead: number;
    contentMoreReads: ContentMoreRead[];
    student: Student[];

}
