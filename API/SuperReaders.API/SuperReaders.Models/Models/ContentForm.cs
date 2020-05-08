using Microsoft.AspNetCore.Http;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Models.Models
{
    public class ContentForm
    {
        [JsonProperty("content")]
        public string Content { get; set; }
        [JsonProperty("pages")]
        public string Pages { get; set; }
        [JsonProperty("questions")]
        public string Questions { get; set; }

        [JsonProperty("imgContent")]
        public IFormFile ImgContent { get; set; }

    }
}
