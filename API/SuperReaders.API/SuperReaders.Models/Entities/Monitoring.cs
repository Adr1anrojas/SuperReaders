using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;

namespace SuperReaders.Models.Entities
{
    public class Monitoring
    {
        [Key]
        [JsonProperty("IdStudentContent")]
        public int IdStudentContent { get; set; }
        [JsonProperty("IdStudent")]
        public int IdStudent { get; set; }
        [JsonProperty("IdContent")]
        public int IdContent { get; set; }
        [JsonProperty("TimeReading")]
        public int TimeReading { get; set; }
        [JsonProperty("DateStart")]
        public DateTime DateStart { get; set; }
        [JsonProperty("DateFinish")]
        public DateTime DateFinish { get; set; }
        [JsonProperty("IsFinish")]
        public bool IsFinish { get; set; }
        [JsonProperty("CurrentPage")]
        public int CurrentPage { get; set; }
        [JsonProperty("Question")]
        public IEnumerable<Answers> Question { get; set; }
        
    }
}
