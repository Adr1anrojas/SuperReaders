using Dapper;
using SuperReaders.API.Helper;
using SuperReaders.Contracts.Constants;
using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
namespace SuperReaders.Services.DAO
{
    public class ClassRoomDAO : IClassRoomDAO
    {
        public int AddClassRoom(ClassRoom classRoom)
        {
            throw new NotImplementedException();
        }

        public void DeleteClassRoom(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<ClassRoom> GetClassRoom(int id)
        {
            throw new NotImplementedException();
        }

        public int GetClassRoomByName(string name)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<ClassRoom> GetClassRooms()
        {
            throw new NotImplementedException();
        }

        public void UpdateClassRoom(ClassRoom classRoom)
        {
            throw new NotImplementedException();
        }
    }
}