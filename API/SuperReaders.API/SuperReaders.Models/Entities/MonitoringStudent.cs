using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Http;

namespace SuperReaders.Models.Entities
{
    public class MonitoringStudent
    {
        [JsonProperty("title")]
        public string Title { get; set; }
        [JsonProperty("name")]
        public string Name { get; set; }
        [JsonProperty("timeReading")]
        public int TimeReading { get; set; }
        [JsonProperty("currentPage")]
        public int CurrentPage { get; set; }
        [JsonProperty("dateStart")]
        public DateTime DateStart { get; set; }
        [JsonProperty("dateFinish")]
        public DateTime DateFinish { get; set; }
        [JsonProperty("isFinish")]
        public bool IsFinish { get; set; }
        [JsonProperty("correct")]
        public int Correct { get; set; }
        [JsonProperty("incorrect")]
        public int Incorrect { get; set; }
    }
}
