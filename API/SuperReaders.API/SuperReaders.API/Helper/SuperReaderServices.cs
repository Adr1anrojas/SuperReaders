using Microsoft.Extensions.DependencyInjection;
using SuperReaders.Contracts.Constants;
using SuperReaders.Contracts.Interfaces.IDAO;
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

    }
}
