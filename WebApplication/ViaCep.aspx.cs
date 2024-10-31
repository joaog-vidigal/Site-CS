using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ViaCep;

namespace WebApplication
{
    public partial class ViaCep : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            // Primeira maneira
            /*
            var cep = CEP.Text.Trim();

            var viaCep = new ViaCepClient().Search(cep);

            Rua.Text = viaCep.Street;
            Bairro.Text = viaCep.Neighborhood;
            Cidade.Text = viaCep.City;
            UF.Text = viaCep.StateInitials;
            */

            //Segunda Maneira
            var cep = CEP.Text.Trim();

            if (cep.Length != 8)
            {
                Alerta.Text = "Digite o CEP corretamente";
            }
            else
            {
                string url = $"https://viacep.com.br/ws/{cep}/json";

                Uri uri = new Uri(url);

                HttpClient client = new HttpClient();
                string response = client.GetStringAsync(uri).Result;

                JObject result = JObject.Parse(response);

                if (result["erro"] == null)
                {
                    Rua.Text = result["logradouro"].ToString();
                    Bairro.Text = result["bairro"].ToString();
                    Cidade.Text = result["localidade"].ToString();
                    UF.Text = result["uf"].ToString(); 
                }
                else
                {
                    Alerta.Text = "Erro ao procurar pelo CEP";
                }
            }
        }

        protected void Limpar_Click(object sender, EventArgs e)
        {
            CEP.Text = string.Empty;
            Rua.Text = string.Empty;
            Numero.Text = string.Empty;
            Bairro.Text = string.Empty;
            UF.Text = string.Empty;
        }
    }
}