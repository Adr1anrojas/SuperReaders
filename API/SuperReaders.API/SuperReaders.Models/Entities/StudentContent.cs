using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;
namespace SuperReaders.Models.Entities
{
    public class StudentContent
    {
        [Key]
        [JsonProperty("idStudentcontent")]
        public int? IdStudentContent { get; set; }
        [JsonProperty("idStudent")]
        public int IdStudent { get; set; }
        [JsonProperty("idContent")]
        public int IdContent { get; set; }
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
    }
}
