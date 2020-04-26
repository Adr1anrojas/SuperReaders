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

namespace SuperReaders.Services.DomainObject
{
    public class ContentDomainObject : IContentDomainObject
    {
        private IContentDAO _iContentDAO;
        private IContentDetailDAO _iContentDetailDAO;
        private IStudentDAO _iStudentDAO;
        private IPageDAO _iPageDAO;
        private IQuestionDAO _iQuestionDAO;
        private IAnswerDAO _iAnswerDAO;
        private readonly IHostingEnvironment hostingEnvironment;
        public ContentDomainObject(IContentDAO iContentDAO,IPageDAO iPageDAO,IQuestionDAO iQuestionDAO,IAnswerDAO iAnswerDAO, IHostingEnvironment environment)
        {
            _iContentDAO = iContentDAO;
            _iPageDAO = iPageDAO;
            _iQuestionDAO = iQuestionDAO;
            _iAnswerDAO = iAnswerDAO;
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
                    foreach (Page item in content.pages)
                    {
                        item.IdContent = idContent;
                        _iPageDAO.AddPage(item);
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
                    SaveImg(content);
                }
                else
                    throw new ArgumentException("This title content already exists");
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        private void SaveImg(ContentDTO content)
        { 
            var dir = hostingEnvironment.ContentRootPath;
            var ruta = Path.Combine(dir + "\\Img\\Content\\");
            byte[] imageBytes = Convert.FromBase64String(content.content.Img);
            ImageConverter converter = new ImageConverter();
            Image img = (Image)converter.ConvertFrom(imageBytes);
            string path = ruta + content.content.Title + ".jpg";
            img.Save(path, ImageFormat.Jpeg);
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
            try
            {
                return _iContentDAO.GetAllContents();
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public IEnumerable<Content> GetContent(int id)
        {
                try
                {
                    return _iContentDAO.GetContent(id);
                }
                catch (Exception e)
                {
                    throw e;
                }
         }

        public IEnumerable<TypeContent> GetTypeContent()
        {
            try
            {
                return _iContentDAO.GetTypeContent();
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

    }
}

