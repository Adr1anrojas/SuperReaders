using Newtonsoft.Json;
using System;
using System.ComponentModel.DataAnnotations;

namespace SuperReaders.Models.Entities
{
    public class User
    {
        [Key]
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("adminId")]
        public int? AdminId { get; set; }
        [JsonProperty("studentId")]
        public int? StudentId { get; set; }
        [JsonProperty("teacherId")]
        public int TeacherId { get; set; }
        [JsonProperty("firstName")]
        public string FirstName { get; set; }
        [JsonProperty("lastName")]
        public string LastName { get; set; }
        [JsonProperty("userName")]
        public string UserName { get; set; }
        [JsonProperty("email")]
        public string Email { get; set; }
        [JsonProperty("role")]
        public string Role { get; set; }
        [JsonProperty("password")]
        #nullable enable
        public string? Password { get; set; }
        [JsonProperty("birthDate")]
        public DateTime BirthDate { get; set; }
        [JsonProperty("idSchool")]
        public int IdSchool { get; set; }
        [JsonProperty("status")]
        public bool Status { get; set; }
        [JsonProperty("classRoom")]
        public ClassRoom? classRoom { get; set; }
    }
}
