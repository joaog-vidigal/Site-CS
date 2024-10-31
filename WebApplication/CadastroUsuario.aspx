<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroUsuario.aspx.cs" Inherits="WebApplication.CadastroUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/style_cadastro.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">


    <div class="center padding-top-60" style="padding-top: 60px;">
        <!--<h1>Cadastrar</h1>-->
        <div class="card border">
            <div style="background-color: white;" class="box border padding-14 center">

                <h2 style="padding-top: 15px; text-align: center; font-size: 30px;">Cadastro de Usuário</h2>
                <br />
                <asp:Label ID="Alerta" ForeColor="Red" FontSize="16px" runat="server"></asp:Label>
                <br />
                <asp:Label ID="UsuarioID" FontSize="30px" runat="server"></asp:Label>
                <br />
                <div class="txt_field">

                    <label>Nome</label>
                    <asp:TextBox ID="Nome" MaxLegth="255" runat="server"></asp:TextBox>
                </div>

                <div class="txt_field">

                    <label>E-mail</label>
                    <asp:TextBox ID="Email" MaxLegth="255" runat="server"></asp:TextBox>
                </div>

                <div class="txt_field">
                    <label>Nome de Acesso</label>
                    <asp:TextBox ID="NomeAcesso" MaxLegth="255" runat="server"></asp:TextBox>
                </div>

                <div class="txt_field">

                    <label>Senha</label>
                    <asp:TextBox ID="Senha1" MaxLegth="255" TextMode="Password" runat="server"></asp:TextBox>

                </div>
                <div class="txt_field">

                    <label>Repita a Senha</label>
                    <asp:TextBox ID="Senha2" MaxLegth="255" TextMode="Password" runat="server"></asp:TextBox>
                </div>

                <div style="display: flex; width: 100%; justify-content: center">
                    <asp:Button ID="Enviar" runat="server" Text="Enviar" OnClick="Enviar_Click" style=" width: 70%;"/>
                    <asp:Menu ID="Menu1" runat="server"></asp:Menu>

                </div>

            </div>
        </div>
    </div>
</asp:Content>
