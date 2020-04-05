using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace SuperReaders.Models.Entities
{
    public class Question
    {
        [Key]
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("idcontent")]
        public string IdContent { get; set; }
        [JsonProperty("text")]
        public string Text { get; set; }
        
    }
}
