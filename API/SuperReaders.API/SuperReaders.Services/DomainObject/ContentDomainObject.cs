using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using SuperReaders.Models.DTO;
using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

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

        public ContentDomainObject(IContentDAO iContentDAO,IPageDAO iPageDAO,IQuestionDAO iQuestionDAO,IAnswerDAO iAnswerDAO)
        {
            _iContentDAO = iContentDAO;
            _iPageDAO = iPageDAO;
            _iQuestionDAO = iQuestionDAO;
            _iAnswerDAO = iAnswerDAO;
        }

        public void AddContent(ContentDTO content)
        {
            try
            {
                List<int> questionsId = new List<int>();
                List<int> answersId = new List<int>();
                int result = _iContentDAO.GetContentByContentName(content.content.Title);
                if (result == 0)
                {
                    int id = _iContentDAO.AddContent(content.content);
                    foreach (Page item in content.pages)
                    {
                        _iPageDAO.AddPage(item);
                    }
                    foreach (Question item in content.questions)
                    {
                        _iQuestionDAO.AddQuestion(item);
                        questionsId.Add(item.Id);
                    }
                    foreach(Answer item in content.answers)
                    {
                        _iAnswerDAO.AddAnswer(item);
                        answersId.Add(item.Id);
                    }
                    for (int i = 0; i <questionsId.Count; i++)
                    {
                        _iContentDAO.AddQuestionAnswer(questionsId[i],answersId[i]);
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

        // <summary>
        /// This EndPoint update an Content 
        /// </summary>
        /// <param name="content">content to update</param>
        /// <returns>status code 200</returns>
        public void UpdateContent(Content content)
        {
            try
            {
                int result = _iContentDAO.GetContentByContentName(content.Title);
                if (result == 0)
                    _iContentDAO.UpdateContent(content);
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

