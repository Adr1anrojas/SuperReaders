using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace SuperReaders.Models.Entities
{
    public class Teacher
    {
        [Key]
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("idUser")]
        public int IdUser { get; set; }
    }
}
