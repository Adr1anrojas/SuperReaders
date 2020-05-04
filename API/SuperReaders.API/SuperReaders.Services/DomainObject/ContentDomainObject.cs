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

        private string GetImg(Content content, int option)
        {
            string path = GetPath(content.Title, option);
            try
            {
                using (Image image = Image.FromFile(path+content.Title+".jpeg"))
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
            var folder = Path.Combine(hostingEnvironment.ContentRootPath + (option==1? "\\Img\\Content\\" + title + "\\": "\\Img\\Content\\" + Regex.Split(title, "-page")[0] + "\\"));
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
                    content.Img = GetImg(content, 1);
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
                content.pages = _iPageDAO.GetPagesByIdContent(id);
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

