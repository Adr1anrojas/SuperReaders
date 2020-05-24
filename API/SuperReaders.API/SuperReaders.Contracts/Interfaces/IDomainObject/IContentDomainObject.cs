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
        ContentDTO GetContent(int id);
        IEnumerable<TypeContent> GetContentByTypeContent();
        IEnumerable<Content> GetContentByIdTypeContent(int idTypeContent);
        IEnumerable<TypeContent> GetTypeContent();
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

        /// <summary>
        /// This Method create an typeContent of the student specified
        /// </summary>
        /// <param name="typeContentStudent">typeContent to user</param>
        /// <returns></returns>
        void AddTypeContentStudent(List<TypeContent> typeContentStudent);

        /// <summary>
        /// This Method create an StudentContent of the student specified
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        StudentContent AddContentStudent(StudentContent contentStudent);

        /// <summary>
        /// This Method assign the content by group
        /// </summary>
        /// <param name="idClassRoom"></param>
        /// <param name="idContent"></param>
        /// <returns></returns>

        void AddContentToStudentByClassRoom(int idClassRoom, int idContent);

        /// <summary>
        /// This Method update an StudentContent of the student specified
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        StudentContent UpdateTimeReading(StudentContent contentStudent);

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
        void SaveAnswerStudent(List<StudentAnswer> studentAnswers);

        List<Content> GetContentByPreferenceStudent(int idStudent);

        List<Content> GetAllAsignmentsByStudent(int idStudent);
    }
}
