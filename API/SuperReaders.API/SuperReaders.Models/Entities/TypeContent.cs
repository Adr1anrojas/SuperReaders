using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace SuperReaders.Models.Entities
{
   public class TypeContent
    {
        [Key]
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("idStudent")]
        public int IdStudent{ get; set; }
        [JsonProperty("name")]
        public string Name { get; set; }
        [JsonProperty("isSelected")]
        public bool IsSelected { get; set; }
        [JsonProperty("img")]
        public string Img { get; set; }

    }
}
