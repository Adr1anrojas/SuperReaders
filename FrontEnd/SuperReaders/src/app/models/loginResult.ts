import { ClassRoom } from './classRoom';

export class LoginResult {
    id: number;
    studentId: number;
    teacherId: number;
    firstName: string;
    lastName: string;
    userName: string;
    email: string;
    idSchool: number;
    role: string;
    token: string;
    refreshToken: string;
    classRoom: ClassRoom;
    isFirstTime: Boolean;
}