using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Http;

namespace SuperReaders.Models.Entities
{
    public class MonitoringContentMoreRead
    {
        [JsonProperty("title")]
        public string Title { get; set; }
        [JsonProperty("more")]
        public int More { get; set; }
        
    }
}
