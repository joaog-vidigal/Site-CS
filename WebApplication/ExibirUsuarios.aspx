<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExibirUsuarios.aspx.cs" Inherits="WebApplication.ExibirUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="row" style="color: white;">
        <div class="col-8">
            <div class="box padding-14">
                <h1 style="text-align: center">
                    Usuários Cadastrados
                </h1>

                <br/>
                <asp:GridView OnSelectedIndexChanged="Usuarios_SelectedIndexChanged" AutoGenerateSelectButton="true" ID="Usuarios" runat="server" Width="100%" BorderColor="#000000" CellPadding="8" BackColor="White" ForeColor="black" HeaderStyle-BackColor="#10b0c9" HeaderStyle-HorizontalAlign="center">

                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
