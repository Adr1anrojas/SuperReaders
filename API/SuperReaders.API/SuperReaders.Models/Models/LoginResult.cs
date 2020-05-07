using Newtonsoft.Json;
using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace SuperReaders.Models.Models
{
    public class LoginResult
    {
        [Key]
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("teacherId")]
        public int TeacherId { get; set; }
        [JsonProperty("studentId")]
        public int StudentId { get; set; }
        [JsonProperty("firstName")]
        public string FirstName { get; set; }
        [JsonProperty("lastName")]
        public string LastName { get; set; }
        [JsonProperty("userName")]
        public string UserName { get; set; }
        [JsonProperty("email")]
        public string Email { get; set; }
        [JsonProperty("idSchool")]
        public int IdSchool { get; set; }
        public bool Status { get; set; }
        [JsonProperty("role")]
        public string Role { get; set; }
        [JsonProperty(PropertyName = "token")]
        public string Token { get; set; }
        [JsonProperty(PropertyName = "refreshToken")]
        public string RefreshToken { get; set; }
        [JsonProperty("classRoom")]
        public ClassRoom classRoom { get; set; }
        [JsonProperty("isFirstTime")]
        public bool IsFirstTime { get; set; }

    }
}
