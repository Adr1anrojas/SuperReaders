using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
    public interface IContentDAO
    {
        /// <summary>
        /// This Method return all Contents  and Access the data
        /// </summary>
        /// <param name="">
        /// <returns>Array of Contents</returns>
        IEnumerable<Content> GetAllContents();

        IEnumerable<Content>GetContent(int id);
        /// <summary>
        /// This Method create an Content and Access the data
        /// </summary>
        /// <param name="content">content to create</param>
        /// <returns></returns>
        int AddContent(Content content);
        /// <summary>
        /// This Method return an User by userName of the role Specified and Access the data
        /// </summary>
        /// <param name="contentName">user to create</param>
        /// <returns></returns>
        int GetContentByContentName(string contentName);

        /// <summary>
        /// This Method update the status of an Content and Access the data
        /// </summary>
        /// <param name="content">content to change status</param>
        /// <returns></returns>
        void UpdateContent(Content content);

        /// <summary>
        /// This Method delete the status of an Content  and Access the data
        /// </summary>
        /// <param name="id">user to change status</param>
        /// <returns></returns>
        void DeleteContent(int id);
        /// <summary>
        /// This Method delete the status of an Content  and Access the data
        /// </summary>
        /// <param name="id">user to change status</param>
        /// <returns></returns>
        void AddContentDetail(int id);
        /// <summary>
        /// This Method delete the status of an Content  and Access the data
        /// </summary>
        /// <param name="id">user to change status</param>
        /// <returns></returns>
        void AddQuestionAnswer(int idQuestion, int idAnswer );
    }
}
