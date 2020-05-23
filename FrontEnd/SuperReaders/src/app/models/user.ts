import { ClassRoom } from './classRoom';

export class User {
    id: number;
    adminId?: number;
    studentId?: number;
    teacherId?: number;
    firstName: string;
    lastName: string;
    userName: string;
    email?: string;
    role: string;
    password?: string;
    birthDate: Date;
    idSchool: number;
    status: Boolean;
    classRoom?: ClassRoom;
}