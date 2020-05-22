using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace SuperReaders.Models.Entities
{
    public class MonitoringClassRoomStudent
    {
        [Key]
        [JsonProperty("id")]
        public int id { get; set; }
        [JsonProperty("firstName")]
        public string FirstName { get; set; }
        [JsonProperty("lastName")]
        public string LastName { get; set; }
        [JsonProperty("contentRead")]
        public int ContentRead { get; set; }
        [JsonProperty("timeReading")]
        public int TimeReading { get; set; }
        [JsonProperty("contentFinished")]
        public int ContentFinished { get; set; }
        [JsonProperty("contentNotFinished")]
        public int ContentNotFinished { get; set; }
    }
}
