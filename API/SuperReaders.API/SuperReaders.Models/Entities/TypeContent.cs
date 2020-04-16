using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace SuperReaders.Models.Entities
{
   public class TypeContent
    {
        [Key]
        [JsonProperty("id")]
        public int? Id { get; set; }
        [JsonProperty("nombre")]
        public int Nombre { get; set; }
    }
}
