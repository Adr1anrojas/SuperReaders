using Microsoft.AspNetCore.Hosting;
using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using SuperReaders.Models.DTO;
using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;

namespace SuperReaders.Services.DomainObject
{
    public class ContentDomainObject : IContentDomainObject
    {
        private IContentDAO _iContentDAO;
        private IPageDAO _iPageDAO;
        private IQuestionDAO _iQuestionDAO;
        private IAnswerDAO _iAnswerDAO;
        private IUserDAO _iUserDAO;
        private readonly IHostingEnvironment hostingEnvironment;
        public ContentDomainObject(IContentDAO iContentDAO,IPageDAO iPageDAO,IQuestionDAO iQuestionDAO,IAnswerDAO iAnswerDAO, IHostingEnvironment environment, IUserDAO iUserDAO)
        {
            _iContentDAO = iContentDAO;
            _iPageDAO = iPageDAO;
            _iQuestionDAO = iQuestionDAO;
            _iAnswerDAO = iAnswerDAO;
            _iUserDAO = iUserDAO;
            hostingEnvironment = environment;
        }

        public void AddContent(ContentDTO content)
        {
            try
            {
                int idContent = 0, idQuestion = 0;
                int result = _iContentDAO.GetContentByContentName(content.content.Title);
                if (result == 0)
                {
                    idContent = _iContentDAO.AddContent(content.content);
                    SaveImg(content.content.Title, content.content.Img, 1);
                    for (int i = 0; i < content.pages.Count; i++)
                    {
                        content.pages[i].IdContent = idContent;
                        _iPageDAO.AddPage(content.pages[i]);
                        SaveImg(content.content.Title + "-page" + (i + 1), content.pages[i].Img, 2);
                    }
                    foreach (Question item in content.questions)
                    {
                        item.IdContent = idContent;
                       idQuestion = _iQuestionDAO.AddQuestion(item);
                        foreach (Answer answer in item.answers)
                        {
                            answer.IdQuestion = idQuestion;
                            _iAnswerDAO.AddAnswer(answer);
                        }
                    }
                }
                else
                    throw new ArgumentException("This title content already exists");
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        private void SaveImg(string title, string base64img, int option)
        { 
            byte[] imageBytes = Convert.FromBase64String(base64img);
            ImageConverter converter = new ImageConverter();
            Image img = (Image)converter.ConvertFrom(imageBytes);
            string path = GetPath(title, option);
            Directory.CreateDirectory(path);
            img.Save(path+title+".jpeg", ImageFormat.Jpeg);
        }

        private string GetImg(string title, int option)
        {
            string path = GetPath(title, option);
            try
            {
                using (Image image = Image.FromFile(path+ title + ".jpeg"))
                {
                    using (MemoryStream m = new MemoryStream())
                    {
                        image.Save(m, image.RawFormat);
                        byte[] imageBytes = m.ToArray();
                        string base64String = Convert.ToBase64String(imageBytes);
                        return base64String;
                    }
                }
            }
            catch(Exception e)
            {
                return null;
            }
        }

        private string GetPath(string title, int option)
        {
            var folder = Path.Combine(hostingEnvironment.ContentRootPath);
            if (option == 1)
                folder +=  "\\Img\\Content\\" + title + "\\";
            else if (option == 2)
                folder += "\\Img\\Content\\" + Regex.Split(title, "-page")[0] + "\\";
            else
                folder += "\\Img\\ContentType\\";
            return folder;
        }

        // DELETE: api/User
        /// <summary>
        /// This EndPoint update the status of an Content
        /// </summary>
        /// <param name="content">Content to change status</param>
        /// <returns>status code 200</returns>
        public void DeleteContent(int id)
        {
            {
                try
                {
                    _iContentDAO.DeleteContent(id);
                }
                catch (Exception e)
                {
                    throw e;
                }
            }
        }

        public IEnumerable<Content> GetAllContents()
        {
            List<Content> contents;
            try
            {
                contents = _iContentDAO.GetAllContents().ToList();
                foreach (Content content in contents)
                {
                    content.Img = GetImg(content.Title, 1);
                }
                return contents;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public ContentDTO GetContent(int id)
        {
            ContentDTO content = new ContentDTO();
            try
            {
                content.content = _iContentDAO.GetContent(id);
                content.content.Img = GetImg(content.content.Title, 1);
                content.pages = _iPageDAO.GetPagesByIdContent(id);
                for (int i = 0; i < content.pages.Count; i++)
                {
                    content.pages[i].Img = GetImg(content.content.Title + "-page" + (i + 1), 2);
                }
                content.questions = _iQuestionDAO.GetQuestionByIdContent(id);
                foreach (var item in content.questions)
                {
                    item.answers = _iAnswerDAO.GetAnswersByIdQuestions(item.Id);
                }
                return content;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public IEnumerable<TypeContent> GetContentByTypeContent() {
            List<TypeContent> typeContent = null;
            try
            {
                typeContent = _iContentDAO.GetTypeContent().ToList();
                foreach (TypeContent type in typeContent)
                {
                    type.Img = GetImg(type.Name, 3);
                    type.Contents = GetContentByIdTypeContent(type.Id).ToList();
                }
                return typeContent;
            }
            catch (Exception e) {
                throw e;
            }
        }
        public IEnumerable<TypeContent> GetTypeContent()
        {
            List<TypeContent> typeContent = null;
            try
            {
                typeContent = _iContentDAO.GetTypeContent().ToList();
                for (int i = 0; i < typeContent.Count; i++)
                {
                    typeContent[i].Img = GetImg(typeContent[i].Name, 3);
                }
                return typeContent;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        // <summary>
        /// This EndPoint update an Content 
        /// </summary>
        /// <param name="content">content to update</param>
        /// <returns>status code 200</returns>
        public void UpdateContent(ContentDTO content)
        {
            try
            {
                int result = _iContentDAO.GetContentByContentName(content.content.Title);
                if (result == 0)
                    _iContentDAO.UpdateContent(content.content);
                else
                    throw new ArgumentException("This content already exists");
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This Method create an typeContent of the student specified
        /// </summary>
        /// <param name="typeContentStudent">typeContent to user</param>
        /// <returns></returns>
        public void AddTypeContentStudent(List<TypeContent> typeContentStudent)
        {
            try
            {
                foreach (var item in typeContentStudent)
                {
                    _iContentDAO.AddTypeContentStudent(item);
                }
                _iUserDAO.UpdateIsFirstTime(typeContentStudent[0].IdStudent);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This Method create an StudentContent of the student specified
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        public StudentContent AddContentStudent(StudentContent contentStudent)
        {
            StudentContent result = null;
            try
            {

                result = _iContentDAO.GetContentStudent(contentStudent);
                if(result == null)
                    result = _iContentDAO.AddContentStudent(contentStudent);
                else if (contentStudent.ReadAgain)
                {
                    result = _iContentDAO.AddContentStudent(contentStudent);
                }
                return result;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This Method create an StudentContent of the student specified
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        public StudentContent UpdateTimeReading(StudentContent contentStudent)
        {
            StudentContent result = null;
            try
            {

                result = _iContentDAO.UpdateTimeReading(contentStudent);
                return result;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This Method update an StudentContent if the student finish the content
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        public StudentContent UpdateFinishContent(StudentContent contentStudent)
        {
            StudentContent result = null;
            try
            {

                result = _iContentDAO.UpdateFinishContent(contentStudent);
                return result;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This Method save the anwers of StudentContent
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        public void SaveAnswerStudent(List<StudentAnswer> studentAnswers)
        {
            try
            {
                foreach (var studentAnswer in studentAnswers)
                {
                    _iContentDAO.SaveAnswerStudent(studentAnswer);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public IEnumerable<Content> GetContentByIdTypeContent(int idTypeContent)
        {
            List<Content> contents;
            try
            {
                contents = _iContentDAO.GetContentByIdTypeContent(idTypeContent).ToList();
                foreach (Content content in contents)
                {
                    content.Img = GetImg(content.Title, 1);
                }
                return contents;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public List<Content> GetContentByPreferenceStudent(int idStudent)
        {
            List<Content> contentStudent = new List<Content>();
            List<StudentTypeContent> studentTypeContents = new List<StudentTypeContent>();
            try
            {
                studentTypeContents = _iContentDAO.GetContentByPreferenceStudent(idStudent).ToList();
                foreach (StudentTypeContent studentTypeContent in studentTypeContents)
                {
                    var contents = _iContentDAO.GetContentByIdTypeContent(studentTypeContent.IdTypeContent).ToList();
                    if(contents.Count>0)
                        foreach (Content content in contents)
                        {
                            content.Img = GetImg(content.Title, 1);
                            contentStudent.Add(content);
                        }
                }
                return contentStudent;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This Method assign the content by group
        /// </summary>
        /// <param name="idClassRoom"></param>
        /// <param name="idContent"></param>
        /// <returns></returns>
        public int AddContentToStudentByClassRoom(int idClassRoom, int idContent)
        {
            int result = 0;
            try
            {
                var existAssing = _iContentDAO.GetContentToStudentByClassRoom(idClassRoom, idContent);
                if(existAssing == null)
                    _iContentDAO.AddContentToStudentByClassRoom(idClassRoom, idContent);
                else
                {
                    existAssing.IsAssignment = !existAssing.IsAssignment;
                    _iContentDAO.UpdateContentToStudentByClassRoom(existAssing.IdClassRoom, existAssing.IdContent, existAssing.IsAssignment);
                    result = existAssing.IsAssignment ? 1 : 0;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            return result;
        }

        public List<Content> GetAllAsignmentsByStudent(int idStudent)
        {
            List<Content> result = null;
            try
            {
                result = _iContentDAO.GetAllAsignmentsByStudent(idStudent);
                foreach (Content content in result)
                {
                    content.Img = GetImg(content.Title, 1);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            return result;
        }
    }
}

