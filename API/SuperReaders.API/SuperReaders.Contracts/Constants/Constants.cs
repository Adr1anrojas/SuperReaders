namespace SuperReaders.Contracts.Constants
{
    public static class Constants
    {
        #region ConfigAPI
            public const string CorsPolicy = "CorsPolicy";
            //public const string OriginAllow = "http://appreaders.web.app";
            public const string OriginAllow = "http://localhost:4200";
        #endregion
        #region User 
            // Parameter constants
            public const string P_User_Id = "@pId";
            public const string P_User_FirstName = "@pFirstName";
            public const string P_User_LastName = "@pLastName";
            public const string P_User_UserName = "@pUserName";
            public const string P_User_Email = "@pEmail";
            public const string P_User_Password = "@pPassword";
            public const string P_User_Status = "@pStatus";
            public const string P_User_Role = "@pRole";
            public const string P_User_BirthDate = "@pBirthDate";
            public const string P_User_IdSchool = "@pIdSchool";
            public const string P_User_ClassRoomId = "@pIdClassRoom";
            public const string P_User_StudentId = "@pIdStudent";
            public const string P_User_TypeContentId = "@pIdTypeContent";
        // StoreProcedure constants
        public const string SP_User_GetAll = "User_GetAll";
            public const string SP_User_GetById = "User_GetById";
            public const string SP_User_GetByUserName = "User_GetByUserName";
            public const string SP_User_Create = "User_Create";
            public const string SP_User_Update = "User_Update";
            public const string SP_User_TeacherUpdateClassRoom = "User_TeacherUpdateClassRoom";
            public const string SP_User_Delete = "User_Delete";
            public const string SP_User_GetStudents = "User_GetStudents";
            public const string SP_User_GetStudentsByClassRoom = "User_GetStudentsByClassRoom";
            public const string SP_User_GetTeachers = "User_GetTeachers";
            public const string SP_User_GetAdmins = "User_GetAdmins";
            public const string SP_User_CreateStudentToClassRoom = "User_CreateStudentToClassRoom";
            public const string SP_User_GetTeacherById = "User_GetTeacherById";
            public const string SP_User_GetStudentById = "User_GetStudentById";
            public const string SP_User_StudentTypeContent = "User_StudentTypeContent";
            public const string SP_User_UpdateIsFirstTime = "User_UpdateIsFirstTime";
        #endregion

        #region Admin
        // Parameter constants
        public const string P_Admin_Id = "@pId";
            public const string P_Admin_UserId = "@pUserId";
            // StoreProcedure constants
            public const string SP_Admin_Create = "Admin_Create";
        #endregion

        #region Teacher
            // Parameter constants
            public const string P_Teacher_Id = "@pId";
            public const string P_Teacher_UserId = "@pUserId";
            public const string P_Teacher_ClassRoomId = "@pClassRoomId";
            // StoreProcedure constants
            public const string SP_Teacher_Create = "Teacher_Create";
        #endregion

        #region Student
            // Parameter constants
            public const string P_Student_Id = "@pId";
            public const string P_Student_UserId = "@pUserId";
            // StoreProcedure constants
            public const string SP_Student_Create = "Student_Create";
        #endregion

        #region Monitoring 
        // Parameter constants
        public const string P_Monitoring_pIdClassRoom = "@pIdClassRoom";
        public const string P_Monitoring_pIdStudent = "@pIdStudent";
        public const string SP_Monitoring_GetByClassRoom = "Monitoring_GetByClassRoom";
        public const string SP_Monitoring_GetByStudent = "Monitoring_GetByStudent";
        public const string SP_Monitoring_GetByContentMoreReading = "Monitoring_GetByContentMoreReading";
        #endregion

        #region Content
        // StoreProcedure constants
        public const string SP_Content_Create = "Content_Create";
            public const string SP_Content_Delete = "Content_Delete";
            public const string SP_Content_Update = "Content_Update";
            public const string SP_Content_GetAllContents = "Content_GetContents";
            public const string SP_Content_GetAllTypeContent = "Content_TypeContent";
            public const string SP_Content_GetContentByIdTypeContent = "Content_GetByIdTypeContent";
            public const string SP_Content_GetContentByPreferenceStudent = "Content_GetContentByPreferenceStudent";
            public const string SP_Content_GetById = "Content_GetById";
            public const string SP_Content_CreateStudentContent = "Content_CreateStudentContent";
            public const string SP_Content_GetStudentContent = "Content_GetStudentContent";
            public const string SP_Content_UpdateTimeReading = "Content_UpdateTimeReading";
            public const string SP_Content_UpdateFinishContent = "Content_UpdateFinishContent";
            public const string SP_Content_SaveAnswerStudent = "Content_SaveAnswerStudent";
            public const string SP_Content_AddContentToStudentByClassRoom = "Content_AddContentToStudentByClassRoom";
            public const string SP_Content_GetContentToStudentByClassRoom = "Content_GetContentToStudentByClassRoom";
            public const string SP_Content_UpdateContentToStudentByClassRoom = "Content_UpdateContentToStudentByClassRoom";
            public const string SP_Content_GetAllAsignmentsByStudent = "Content_GetAllAsignmentsByStudent";

            //Parameter constant 
            public const string P_Content_Id = "@pId";
            public const string P_Content_IdStudent = "@pIdStudent";
            public const string P_Content_IdAnswer = "@pIdAnswer";
            public const string P_Content_Title = "@pTitle";
            public const string P_Content_IdTypeContent = "@pIdTypeContent";
            public const string P_Content_Status = "@pStatus";
            public const string P_Content_TimeReading = "@pTimeReading";
            public const string P_Content_CurrentPage = "@pCurrentPage";
            public const string P_Content_DateStart = "@pDateStart";
            public const string P_Content_DateFinish = "@pDateFinish";
            public const string P_Content_IsFinish = "@pisFinish";
            public const string P_Content_IsAssignment = "@pIsAssignment";
        #endregion

        #region ContentDetail
            public const string P_ContentDetail_IdClassRoom = "@pIdClassRoom";
            public const string P_ContentDetail_IdContent = "@pIdContent";
            // StoreProcedure constants
            public const string SP_ContentDetail_Create = "ContentDetail_Create";
            #endregion

        #region TypeContent
            //Parameter constant 
            public const string P_TypeContent_Id = "@pId";
            public const string P_TypeContent_Name = "@pName";
            // StoreProcedure constants
            public const string SP_TypeContent_Create = "TypeContent_Create";
            public const string SP_TypeContent_Update = "TypeContent_Update";

        #endregion

        #region Page
            //Parameter constant 
            public const string P_Page_Id = "@pId";
            public const string P_Page_Text = "@pText";
            public const string P_Page_IdContent = "@pIdContent";
            // StoreProcedure constants
            public const string SP_Page_Create = "Page_Create";
            public const string SP_Page_Update = "Page_Update";
            public const string SP_Page_Delete = "Page_Delete";
            public const string SP_Page_GetById = "Page_GetById";
            public const string SP_Page_GetByIdContent = "Page_GetByIdContent";
        #endregion

        #region Question
        //Parameter constant 
        public const string P_Question_Id = "@pId";
            public const string P_Question_IdContent = "@pIdContent";
            public const string P_Question_Text = "@pText";
        
            // StoreProcedure constants
            public const string SP_Question_Create = "Question_Create";
            public const string SP_Question_Update = "Question_Update";
            public const string SP_Question_Delete = "Question_Delete";
            public const string SP_Question_GetById = "Question_GetById";
            public const string SP_Question_GetByIdContent = "Question_GetByIdContent";
        #endregion

        #region StudentContent
        //Parameter constant 
        public const string P_StudentContent_Id = "@pIdStudentContent";
            public const string P_StudentContent_IdStudent = "@pIdStudent";
            public const string P_StudentContent_IdContent = "@pIdContent";
            public const string P_StudentContent_TimeReading = "@pTimeReading";
            public const string P_StudentContent_CurrentPage = "@pCurrentPage";
            public const string P_StudentContent_DateStart = "@pDateStart";
            public const string P_StudentContent_DateFinish = "@pDateFinish";
            public const string P_StudentContent_IsFinish = "@pIsFinish";

            // StoreProcedure constants
            public const string SP_StudentContent_Create = "StudentContent_Create";
            public const string SP_StudentContent_Update = "StudentContent_Update";
        #endregion

        #region classRoom
            // Parameter constants
            public const string P_ClassRoom_Id = "@pId";
            public const string P_ClassRoom_Name = "@pName";
            public const string P_ClassRoom_Status = "@pStatus";
            public const string P_ClassRoom_IdTeacher = "@pIdTeacher";
            public const string P_ClassRoom_IdStudent = "@pIdStudent";
            public const string P_ClassRoomDetail_IdClasRoom = "@pIdClassRoom";
            public const string P_ClassRoomDetail_IdStudent = "@pIdStudent";
            public const string SP_ClassRoom_GetAll = "ClassRoom_GetAll";
            public const string SP_ClassRoom_GetAllWithInfo = "ClassRoom_GetAllWithInfo";
            public const string SP_ClassRoom_GetAllAvailable = "ClassRoom_GetAllAvailable";
            public const string SP_ClassRoom_GetById = "ClassRoom_GetById";
            public const string SP_ClassRoom_GetByIdTeacher = "ClassRoom_GetByIdTeacher";
            public const string SP_ClassRoom_GetByName = "ClassRoom_GetByName";
            public const string SP_ClassRoom_Create = "ClassRoom_Create";
            public const string SP_ClassRoom_Update = "ClassRoom_Update";
            public const string SP_ClassRoom_Delete = "ClassRoom_Delete";
            public const string SP_ClassRoomDetail = "ClassRoomDetail_Create";
            public const string SP_ClassRoom_GetByIdStudent = "ClassRoom_GetByIdStudent";
        #endregion

        #region Login
            // Parameter constants
            public const string P_Login_UserName = "@pUserName";
            public const string P_Login_Password = "@pPassword";
            // StoreProcedure constants
            public const string SP_Login_UserLoged = "Login_UserLoged";
        #endregion

        #region AppConfig
            public const string JWT_TOKEN_EXPIRATION_TIME = "Jwt:TokenExpirationTime";
            public const string JWT_REFRESH_TOKEN_EXPIRATION_TIME = "Jwt:RefreshTokenExpirationTime";
            public const string JWT_KEY = "Jwt:Key";
            public const string JWT_ISSUER = "Jwt:Issuer";
        #endregion

        #region Roles
            public const string Admin = "Admin";
            public const string Teacher = "Teacher";
            public const string Student = "Student";
        #endregion

        #region Answer
        // Parameter constants
        public const string P_Answer_Id = "@pId";
        public const string P_Answer_IdPage = "@pIdPage";
        public const string P_Answer_IdQuestion = "@pIdQuestion";
        public const string P_Answer_IdStudent = "@pIdStudent";
        public const string P_Answer_Text= "@pText";
        public const string SP_Answer_Create = "Answer_Create";
        public const string SP_Answer_Update = "Answer_Update";
        public const string SP_Answer_Delete= "Answer_Delete";
        public const string SP_Answer_GetById = "Answer_GetById";
        public const string SP_Answer_GetByIdQuestion = "Answer_GetByIdQuestion";
        #endregion

        #region QuestionAnswer
        // Parameter constants
        public const string P_QuestionAnswer_IdQuestion = "@pIdQuestion";
        public const string P_QuestionAnswer_IdAnswer = "@pIdAnswer";
        public const string SP_QuestionAnswer_Create = "QuestionAnswer_Create";
        #endregion

    }
}
