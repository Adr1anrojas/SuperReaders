using Newtonsoft.Json;
using System;
using System.ComponentModel.DataAnnotations;
namespace SuperReaders.Models.Entities
{
    public class ClassRoom
    {
        [Key]
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("name")]
        public string Name { get; set; }
        [JsonProperty("idTeacher")]
        public int IdTeacher { get; set; }
        [JsonProperty("status")]
        public bool Status { get; set; }
    }
}