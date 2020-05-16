using Newtonsoft.Json;
using System;
using System.ComponentModel.DataAnnotations;

namespace SuperReaders.Models.Entities
{
   public class ContentDetail
    {
        [Key]
        [JsonProperty("idClassroom")]
        public int IdClassRoom { get; set; }
        [JsonProperty("idContent")]
        public int IdContent { get; set; }
    }
}
