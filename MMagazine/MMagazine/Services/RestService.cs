using Newtonsoft.Json;
using System;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Main.Services
{
    public static class RestService
    {
        private static string Token = "Token da API";

        static HttpClient _httpClient;
        private static HttpClient HttpClient()
        {
            if (_httpClient == null)
            {
                _httpClient = new HttpClient() { BaseAddress = new Uri("url api") };
                _httpClient.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", Token);
                _httpClient.DefaultRequestHeaders.TryAddWithoutValidation("Content-Type", "application/json-patch+json");
                _httpClient.DefaultRequestHeaders.TryAddWithoutValidation("accept", "*/*");
                _httpClient.Timeout = new TimeSpan(0, 0, 10);
            }

            return _httpClient;
        }

        public static async Task<HttpResponseMessage> GetAsync(string resource)
        {
            return await HttpClient().GetAsync(resource);
        }

        public static async Task<HttpResponseMessage> PostAsync(string resource, object body)
        {
            try
            {
                var content = new StringContent(JsonConvert.SerializeObject(body), Encoding.UTF8, "application/json-patch+json");
                return await HttpClient().PostAsync(resource, content);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
