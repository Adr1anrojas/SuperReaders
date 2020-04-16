using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
    public interface ITypeContentDAO
    {
        /// <summary>
        /// This Method create an TypeContent
        /// </summary>
        /// <param name="nombre">TypeContent Create</param>
        /// <returns></returns>
        public void AddTypeContent(String nombre);

        /// <summary>
        /// This Method create an Question
        /// </summary>
        /// <param name="question">Question Create</param>
        /// <returns></returns>
        void UpdateTypeContent(TypeContent typeContent);
    }
}
