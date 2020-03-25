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
    }
}
