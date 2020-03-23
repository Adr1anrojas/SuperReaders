using Microsoft.Extensions.DependencyInjection;
using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using SuperReaders.Services.DAO;
using SuperReaders.Services.DomainObject;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Helper
{
    public static class SuperReaderServices
    {
        public static void AddSuperReaderServices(this IServiceCollection services)
        {

            #region Teacher
                services.AddScoped<ITeacherDomainObject, TeacherDomainObject>();
                services.AddScoped<ITeacherDAO, TeacherDAO>();
            #endregion

            #region User
                
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
