using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class FaleConosco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            if (Motivo.SelectedValue == "0")
            {
                Alerta.Text = "Selecione o motivo";

            }
            else if (Nome.Text.Trim() == "") {
                Alerta.Text = "Digite seu nome";

            }
            else if (Email.Text.Trim() == "")
            {
                Alerta.Text = "Digite o seu E-mail";

            } else if (Mensagem.Text.Trim() == "") {
                Alerta.Text = "Digite a Mensagem";

            }
            else
            {
                try{
                    MailMessage email = new MailMessage();
                    email.To.Add("contanto@techprog.com");
                    MailAddress from = new MailAddress("contanto@techprog.com");
                    email.From = from;
                    email.Subject = "Email enviado pelo form Fale Conosco.";
                    email.Body = "Motivo: " + Motivo.SelectedValue + "\n" + "Nome: " + Nome.Text + "\n" + "Email: " + Email.Text + "\n" + "Mensagem: " + Mensagem.Text + "\n";
                    email.IsBodyHtml = false;

                    //Enviar o Email

                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "techoprog.somee.com";
                    smtp.Credentials = new System.Net.NetworkCredential("contato@techprog.com", "");

                    smtp.Send(email);

                    Alerta.Text = "Seu Email foi enviado com sucesso.";
                    Alerta.ForeColor = System.Drawing.Color.Blue;
                    Formulario.Visible = false;

                }
                catch (Exception)
                {
                    Alerta.Text = "Houve uma falha ao enviar o Email.";
                    Alerta.ForeColor = System.Drawing.Color.Red;
                    Formulario.Visible = false;
                };

            
            }
        }
    }
}