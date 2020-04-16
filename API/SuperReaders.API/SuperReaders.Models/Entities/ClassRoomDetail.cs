using Newtonsoft.Json;
using System;
using System.ComponentModel.DataAnnotations;
namespace SuperReaders.Models.Entities
{
    public class ClassRoomDetail
    {
        [JsonProperty("idClassRoom")]
        public int IdClassRoom { get; set; }
        [JsonProperty("idStudent")]
        public int IdStudent{ get; set; }
    }
}