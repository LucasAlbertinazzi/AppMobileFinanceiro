using Main.Services;
using System;
using System.Threading.Tasks;

namespace Main.ConnectionAPI
{
    public class connection
    {
        public async static Task<(bool, string)> ValidaUserAsync(string usuario, string senha)
        {
            try
            {
                var result = await RestService.PostAsync("users/valid-login", new { userName = usuario, password = senha });
                if (result.StatusCode == System.Net.HttpStatusCode.OK)
                {

                    return (true, "Sucesso!");
                }
                else if ((int)result.StatusCode == 204)
                {
                    return (false, "Usuário ou senha inválida");
                }
            }
            catch (Exception)
            {
            }

            return (false, "Serviço temporariamente indisponível");
        }
    }
}

