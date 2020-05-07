using Newtonsoft.Json;
using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Models.DTO
{
    public class ContentDTO
    {
        [JsonProperty("content")]
        public Content content { get; set; }
        [JsonProperty("pages")]
        public List<Page> pages { get; set; }
        [JsonProperty("questions")]
        public List<Question> questions { get; set; }   
    }
}
