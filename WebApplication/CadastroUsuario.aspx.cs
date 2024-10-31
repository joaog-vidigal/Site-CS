using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class CadastroUsuario : System.Web.UI.Page
    {
        // Conexão com o Banco de Dados
        string ConexaoBanco()
        {
            string myAccess = Server.MapPath("~/App_Data/DBADS2024.accdb");
            string conexao = $"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=\"{myAccess}\";Persist Security Info=False;\r\n";

            return conexao;
        }
        protected void LeiaUsuario()
        {
            string sql = $"SELECT * FROM Usuarios WHERE UsuarioID = {UsuarioID.Text}";

            // 2. Construir a string de conexão com o banco de dados
            string conexao = ConexaoBanco();

            Datapost.DB.UTIL ut = new Datapost.DB.UTIL();

            // 3. Construir o comando SQL para inserir o registro na tabela usuários

            Datapost.DB.DAO db = new Datapost.DB.DAO();

            db.ConnectionString = conexao;
            db.DataProviderName = Datapost.DB.DAO.ProviderName.OleDb;

            DataTable tb = new DataTable();

            tb = (DataTable)db.Query(sql);

            Nome.Text = tb.Rows[0]["Nome"].ToString();
            Email.Text = tb.Rows[0]["Email"].ToString();
            NomeAcesso.Text = tb.Rows[0]["NomeAcesso"].ToString();

            var TirarCriptografia = ut.Decrypt(tb.Rows[0]["Senha"].ToString());

            Senha1.Text = TirarCriptografia;
            Senha2.Text = TirarCriptografia;
        }

        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack) // Se não for um retorno "Botão"
            {
                if (Request.QueryString["key"] != null)
                {
                    UsuarioID.Text = Request.QueryString["key"];
                    Senha1.TextMode = TextBoxMode.SingleLine;
                    Senha2.TextMode = TextBoxMode.SingleLine;
                    LeiaUsuario();
                }
            }

        }

        protected string Clear(string valor)
        {
            return valor.Trim();
        }

        protected bool CheckName(string valor)
        {
            // 1. String de Conexão
            // 2. Construir a string de conexão com o banco de dados

            string conexao = ConexaoBanco();

            // 3. Comando sql
            string sql = $"SELECT * FROM Usuarios WHERE NomeAcesso='{valor}'";

            // 4. Enviar os dados para o Banco de Dados

            Datapost.DB.DAO db = new Datapost.DB.DAO();

            db.ConnectionString = conexao;
            db.DataProviderName = Datapost.DB.DAO.ProviderName.OleDb;

            DataTable tb = new DataTable();

            tb = (DataTable)db.Query(sql);

            if (tb.Rows.Count == 1)
            {
                if (tb.Rows[0]["UsuarioID"].ToString() == "")
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            else
            {
                return true;
            }
        }
        
        protected void Enviar_Click(object sender, EventArgs e)
        {

            // 1. Validações

            if (Clear(Nome.Text) == "")
            {
                Alerta.Text = "Digite seu nome";
            }
            else if (Clear(Email.Text) == "")
            {
                Alerta.Text = "Digite seu E-mail";
            }
            else if (Clear(NomeAcesso.Text) == "")
            {
                Alerta.Text = "Digite um nome para acessar o sistema";
            }
            else if (Clear(Senha1.Text) == "")
            {
                Alerta.Text = "Digite a senha";
            }
            else if (Clear(Senha1.Text) != Clear(Senha2.Text))
            {
                Alerta.Text = "As senhas digitadas são diferentes";
            }
            else if (!CheckName(Clear(NomeAcesso.Text)))
            {
                Alerta.Text = "Nome de Acesso já existe.";
            }
            else
            {
                // 2. Construir a string de conexão com o banco de dados
                string conexao = ConexaoBanco();

                Datapost.DB.UTIL ut = new Datapost.DB.UTIL();

                string SQL = "";

                if (UsuarioID.Text == "")
                {
                    // 3. Construir o comando SQL para inserir o registro na tabela usuários
                    SQL = $"INSERT INTO Usuarios(Nome,Email,NomeAcesso,Senha) VALUES('{Clear(Nome.Text)}','{Clear(Email.Text)}','{Clear(NomeAcesso.Text)}','{ut.Encrypt(Clear(Senha1.Text))}')";
                }
                else
                {
                    SQL = $"UPDATE Usuarios SET Nome = '{Clear(Nome.Text)}', Email = '{Clear(Email.Text)}', NomeAcesso = '{Clear(NomeAcesso.Text)}', Senha = '{ut.Encrypt(Clear(Senha1.Text))}'  WHERE UsuarioID = {Clear(UsuarioID.Text)}";
                }

                // 4. Enviar os dados para o banco de dados


                Datapost.DB.DAO db = new Datapost.DB.DAO();

                db.ConnectionString = conexao;
                db.DataProviderName = Datapost.DB.DAO.ProviderName.OleDb;
                db.Query(SQL);

                // 5. Inseriu com Sucesso

                Nome.Text = "";
                Email.Text = "";
                NomeAcesso.Text = "";
                Senha1.Text = "";
                Senha2.Text = "";
                Alerta.Text = "";



            }



        }
    }
}