using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Security.Cryptography.Pkcs;
using System.Security.Cryptography.Xml;

namespace VulnerableApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ApiController : ControllerBase
    {
        [HttpGet("test")]
        public IActionResult Test()
        {
            var data = new { message = "Hello from vulnerable API" };
            var json = JsonConvert.SerializeObject(data);
            return Ok(json);
        }

        [HttpPost("process")]
        public IActionResult Process([FromBody] object data)
        {
            return Ok(new { processed = true });
        }
    }
}
