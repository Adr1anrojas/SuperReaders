using SuperReaders.Models.DTO;
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

        Content GetContent(int id);

        IEnumerable<TypeContent> GetTypeContent();

        IEnumerable<Content> GetContentByIdTypeContent(int idTypeContent);
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

        /// <summary>
        /// This Method create an typeContent of the student specified
        /// </summary>
        /// <param name="typeContentStudent">typeContent to user</param>
        /// <returns></returns>
        void AddTypeContentStudent(TypeContent typeContentStudent);

        /// <summary>
        /// This Method create an StudentContent of the student specified
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        StudentContent AddContentStudent(StudentContent contentStudent);

        /// <summary>
        /// This Method update an StudentContent of the student specified
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        StudentContent UpdateTimeReading(StudentContent contentStudent);

        /// <summary>
        /// This Method create an StudentContent of the student specified
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        StudentContent GetContentStudent(StudentContent contentStudent);

        /// <summary>
        /// This Method update an StudentContent if the student finish the content
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        StudentContent UpdateFinishContent(StudentContent contentStudent);

        /// <summary>
        /// This Method save the anwers of StudentContent
        /// </summary>
        /// <param name="studentAnswer"></param>
        /// <returns></returns>
        void SaveAnswerStudent(StudentAnswer studentAnswer);

        IEnumerable<StudentTypeContent> GetContentByPreferenceStudent(int idStudent);
    }
}
