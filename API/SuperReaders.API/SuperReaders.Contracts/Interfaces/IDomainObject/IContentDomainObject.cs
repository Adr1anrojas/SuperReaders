using SuperReaders.Models.DTO;
using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDomainObject
{
    public interface IContentDomainObject
    {
        /// <summary>
        /// This Method return all Users of Content and apply the business rules
        /// </summary>
        /// <param name="">
        /// <returns>Array of Users of the role Specified</returns>
        IEnumerable<Content> GetAllContents();
        IEnumerable<Content> GetContent(int id);
        /// <summary>
        /// This Method create an User of the role Specified and apply the business rules
        /// </summary>
        /// <param name="user">user to create</param>
        /// <returns></returns>
        void AddContent(ContentDTO content);

        /// <summary>
        /// This Method update an User of the role Specified and apply the business rules
        /// </summary>
        /// <param name="user">user to update</param>
        /// <returns>status code 200</returns>
        void UpdateContent(ContentDTO content);

        /// <summary>
        /// This Method update the status of an User of the role Specified and apply the business rules
        /// </summary>
        /// <param name="user">user to change status</param>
        /// <returns>status code 200</returns>
        void DeleteContent(int id);
    }
}
