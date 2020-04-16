using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;
using System.ComponentModel.DataAnnotations;
namespace SuperReaders.Models.Entities
{
   public class Content
    {
        [Key]
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("title")]
        public string Title { get; set; }
        [JsonProperty("idTypecontent")]
        public int IdTypeContent { get; set; }
        [JsonProperty("status")]
        public bool Status { get; set; }
    }
}
