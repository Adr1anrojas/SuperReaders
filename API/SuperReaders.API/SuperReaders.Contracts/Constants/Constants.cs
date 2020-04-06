namespace SuperReaders.Contracts.Constants
{
    public static class Constants
    {
        #region ConfigAPI
            public const string CorsPolicy = "CorsPolicy";
            public const string OriginAllow = "http://localhost:4200";
        #endregion
        #region User 
            // Parameter constants
            public const string P_User_Id = "@pId";
            public const string P_User_FirstName = "@pFirstName";
            public const string P_User_LastName = "@pLastName";
            public const string P_User_UserName = "@pUserName";
            public const string P_User_Password = "@pPassword";
            public const string P_User_Status = "@pStatus";
            public const string P_User_Role = "@pRole";
            public const string P_User_BirthDate = "@pBirthDate";
            public const string P_User_IdSchool = "@pIdSchool";
            // StoreProcedure constants
            public const string SP_User_GetAll = "User_GetAll";
            public const string SP_User_GetById = "User_GetById";
            public const string SP_User_GetByUserName = "User_GetByUserName";
            public const string SP_User_Create = "User_Create";
            public const string SP_User_Update = "User_Update";
            public const string SP_User_Delete = "User_Delete";
        #endregion

        #region
            // Parameter constants
            public const string P_Admin_Id = "@pId";
            public const string P_Admin_UserId = "@pUserId";
            // StoreProcedure constants
            public const string SP_Admin_Create = "Admin_Create";
        #endregion

        #region
            // Parameter constants
            public const string P_Teacher_Id = "@pId";
            public const string P_Teacher_UserId = "@pUserId";
            // StoreProcedure constants
            public const string SP_Teacher_Create = "Teacher_Create";
        #endregion

        #region
            // Parameter constants
            public const string P_Student_Id = "@pId";
            public const string P_Student_UserId = "@pUserId";
            // StoreProcedure constants
            public const string SP_Student_Create = "Student_Create";
        #endregion
        #region Content
            // StoreProcedure constants
            public const string SP_Content_Create = "Content_Create";
            public const string SP_Content_Delete = "Content_Delete";
            public const string SP_Content_Update = "Content_Update";
            public const string SP_Content_GetAllContents = "Content_GetContents";
            public const string SP_Content_GetById = "Content_GetById";
            //Parameter constant 
            public const string P_Content_Id = "@pId";
            public const string P_Content_Title = "@pTitle";
            public const string P_Content_IdTypeContent = "@pIdTypeContent";
            public const string P_Content_Status = "@pStatus";
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
            public const string P_TypeContent_Nombre = "@pNombre";
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
        #endregion
        #region Question
            //Parameter constant 
            public const string P_Question_Id = "@pId";
            public const string P_Question_IdContent = "@pIdContent";
            public const string P_Question_Text = "@pText";
        
            // StoreProcedure constants
            public const string SP_Question_Create = "Question_Create";
            public const string SP_Question_Update = "Question_Update";
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
            public const string SP_ClassRoom_GetAll = "ClassRoom_GetAll";
            public const string SP_ClassRoom_GetById = "ClassRoom_GetById";
            public const string SP_ClassRoom_GetByIdTeacher = "ClassRoom_GetByIdTeacher";
            public const string SP_ClassRoom_GetByName = "ClassRoom_GetByName";
            public const string SP_ClassRoom_Create = "ClassRoom_Create";
            public const string SP_ClassRoom_Update = "ClassRoom_Update";
            public const string SP_ClassRoom_Delete = "ClassRoom_Delete";
        #endregion
    }
}
