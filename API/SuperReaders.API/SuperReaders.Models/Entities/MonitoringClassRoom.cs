using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Http;

namespace SuperReaders.Models.Entities
{
    public class MonitoringClassRoom
    {
        [JsonProperty("averageContentRead")]
        public decimal averageContentRead { get; set; }
        [JsonProperty("contentRead")]
        public int contentReadFromMoreRead { get; set; }
        [JsonProperty("contentReadFromMoreRead")]
        public decimal averageContentNotRead { get; set; }
        [JsonProperty("averageContentNotRead")]
        public IEnumerable<MonitoringContentMoreRead> contentMoreReads { get; set; }
        [JsonProperty("student")]
        public IEnumerable<MonitoringClassRoomStudent> Student { get; set; }
        
    }

}
