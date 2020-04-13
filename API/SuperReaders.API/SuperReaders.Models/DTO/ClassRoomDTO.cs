using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace SuperReaders.Models.DTO
{
    public class ClassRoomDTO
    {
        [Key]
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("name")]
        public string Name { get; set; }
        [JsonProperty("Teacher")]
        public string Teacher { get; set; }
        [JsonProperty("quantityStudents")]
        public string QuantityStudents { get; set; }
        [JsonProperty("status")]
        public bool Status { get; set; }

    }
}
