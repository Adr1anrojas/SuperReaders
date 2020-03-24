using Microsoft.Extensions.DependencyInjection;
using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Services.DAO;
using SuperReaders.Services.DomainObject;

namespace SuperReaders.Models.Helper
{
    public static class SuperReaderServices
    {
        public static void AddSuperReaderServices(this IServiceCollection services)
        {
            #region User
                services.AddScoped<IUserDomainObject, UserDomainObject>();
                services.AddScoped<IUserDAO, UserDAO>();
            #endregion

        }

        public static void AddConfigurationCors(this IServiceCollection services)
        {
            services.AddCors(options =>
            {
                options.AddPolicy("CorsPolicy",
                    builder => builder.WithOrigins("http://localhost:4200")
                    .AllowAnyMethod()
                    .AllowAnyHeader()
                    .AllowCredentials());
            });
        }

    }
}
