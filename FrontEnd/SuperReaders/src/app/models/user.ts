import { ClassRoom } from './classRoom';

export class User {
    id: number;
    adminId?: number;
    studentId?: number;
    teacherId?: number;
    firstName: string;
    lastName: string;
    userName: string;
<<<<<<< HEAD
    email?: string;
=======
    email: string;
>>>>>>> a5487686035e3c1ddf19c94dbd87dfabc4352ed0
    role: string;
    password?: string;
    birthDate: Date;
    idSchool: number;
    status: Boolean;
    classRoom?: ClassRoom;
}