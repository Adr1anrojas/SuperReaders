using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace SuperReaders.Models.Entities
{
  public class QuestionAnswer
    {
        [Key]
        [JsonProperty("idQuestion")]
        public int IdQuestion{ get; set; }
        [JsonProperty("idAnswer")]
        public int IdAnswer { get; set; }
     
    }
}
