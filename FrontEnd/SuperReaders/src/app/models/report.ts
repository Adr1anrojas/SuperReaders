import { Student } from './student';
import { ContentMoreRead } from './contentmoreread';
export class Report {

    averageContentRead: number;
    contentReadFromMoreRead: number;
    averageContentNotRead: number;
    students: Student[];
    contentMoreReads: ContentMoreRead[];
}
