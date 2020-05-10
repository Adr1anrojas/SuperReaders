using Microsoft.Extensions.DependencyInjection;
using SuperReaders.Contracts.Constants;
using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using SuperReaders.Services.DAO;
using SuperReaders.Services.DomainObject;

namespace SuperReaders.Models.Helper
{
    public static class SuperReaderServices
    {
        /// <summary>
        /// This method creates an instance for each request
        /// </summary>
        /// <param name="services">Instance of IServiceCollection</param>
        /// <returns></returns>
        public static void AddSuperReaderServices(this IServiceCollection services)
        {
            #region User
                services.AddScoped<IUserDomainObject, UserDomainObject>();
                services.AddScoped<IUserDAO, UserDAO>();
                services.AddScoped<IAdminDAO, AdminDAO>();
                services.AddScoped<ITeacherDAO, TeacherDAO>();
                services.AddScoped<IStudentDAO, StudentDAO>();
            #endregion
            #region Monitoring
            services.AddScoped<IMonitoringDomainObject, MonitoringDomainObjetc>();
            services.AddScoped<IMonitoringDAO, MonitoringDAO>();
            #endregion

            #region Content
                services.AddScoped<IContentDomainObject, ContentDomainObject>();
                services.AddScoped<IContentDAO, ContentDAO>();
                services.AddScoped<IPageDAO, PageDAO>();
                services.AddScoped<IQuestionDAO, QuestionDAO>();
                services.AddScoped<IAnswerDAO, AnswerDAO>();
                services.AddScoped<IQuestionAnswerDAO, QuestionAnswerDAO>();
            #endregion

            #region ClassRoom
            services.AddScoped<IClassRoomDomainObject, ClassRoomDomainObject>();
                services.AddScoped<IClassRoomDAO, ClassRoomDAO>();
            #endregion

            #region Login
                services.AddScoped<ILoginDomainObject, LoginDomainObject>();
                services.AddScoped<ILoginDAO, LoginDAO>();
            #endregion

        }

        /// <summary>
        /// This method allows access to services
        /// </summary>
        /// <param name="services">Instance of IServiceCollection</param>
        /// <returns></returns>
        public static void AddConfigurationCors(this IServiceCollection services)
        {
            services.AddCors(options =>
            {
                options.AddPolicy(Constants.CorsPolicy,
                    builder => builder.WithOrigins(Constants.OriginAllow)
                    .AllowAnyMethod()
                    .AllowAnyHeader()
                    .AllowCredentials());
            });
        }

        public static void AddJWTConfiguration(this IServiceCollection services)
        {
           
        }
    }
}
