<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroClientes.aspx.cs" Inherits="WebApplication.CadastroClientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <!-- https://viacep.com.br/ws/13478500/json/ -->
    <div class="center padding-top-60">
        <!--<h1>Cadastrar</h1>-->
        <div class="card border">
            <div style="background-color: white;" class="box border padding-14 center">

                <h2 style="padding-top: 15px; text-align: center; font-size: 30px;">Cadastro de Usuário</h2>
                <br />
                <!--<asp:Label ID="Alerta" ForeColor="Red" FontSize="16px" runat="server" Text="Label"></asp:Label>-->

                <div class="txt_field">

                    <label>Nome</label>
                    <asp:TextBox ID="Nome" MaxLegth="255" runat="server"></asp:TextBox>
                </div>

                <div class="txt_field">

                    <label>CEP</label>
                    <asp:TextBox ID="CEP" MaxLegth="8" runat="server"></asp:TextBox>
                </div>

                <div class="txt_field">
                    <label>Endereço</label>
                    <asp:TextBox ID="Endereco" MaxLegth="255" runat="server"></asp:TextBox>
                </div>

                <div class="txt_field">

                    <label>Número</label>
                    <asp:TextBox ID="Numero" MaxLegth="255"  runat="server"></asp:TextBox>

                </div>
                <div class="txt_field">

                    <label>Repita a Senha</label>
                    <asp:TextBox ID="Senha2" MaxLegth="255" TextMode="Password" runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="Enviar" runat="server" Text="Enviar" OnClick="Enviar_Click" />

                <asp:Menu ID="Menu1" runat="server"></asp:Menu>

            </div>
        </div>
    </div>
</asp:Content>
