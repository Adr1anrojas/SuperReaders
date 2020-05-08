using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace SuperReaders.Models.Entities
{
    public class Page
    {
        [Key]
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("text")]
        public string Text { get; set; }
        [JsonProperty("idContent")]
        public int IdContent { get; set; }
        [JsonProperty("img")]
        public string Img { get; set; }
    }
}
