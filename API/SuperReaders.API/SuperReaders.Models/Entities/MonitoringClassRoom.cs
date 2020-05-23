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
        [JsonProperty("contentReadFromMoreRead")]
        public int contentReadFromMoreRead { get; set; }
        [JsonProperty("averageContentNotRead")]
        public decimal averageContentNotRead { get; set; }
        [JsonProperty("sumContentFinished")]
        public int sumContentFinished { get; set; }

        [JsonProperty("sumContentNotFinished")]
        public int sumContentNotFinished { get; set; }
        [JsonProperty("contentMoreReads")]
        public IEnumerable<MonitoringContentMoreRead> contentMoreReads { get; set; }
        [JsonProperty("student")]
        public IEnumerable<MonitoringClassRoomStudent> Student { get; set; }
        
    }

}
