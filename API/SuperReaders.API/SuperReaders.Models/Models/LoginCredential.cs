using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Models.Models
{
    public class LoginCredential
    {
        [JsonProperty(PropertyName = "userName")]
        public string UserName { get; set; }
        [JsonProperty(PropertyName = "password")]
        public string Password { get; set; }
        [JsonProperty(PropertyName = "refreshToken")]
        public string RefreshToken { get; set; }
    }
}
