using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace SuperReaders.Models.Entities
{
    public class Answer
    {
        [Key]
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("text")]
        public string Text { get; set; }
        [JsonProperty("isCorrect")]
        public bool IsCorrect { get; set; }
        [JsonProperty("idQuestion")]
        public int IdQuestion { get; set; }
    }
}
