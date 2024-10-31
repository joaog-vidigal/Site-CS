<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViaCep.aspx.cs" Inherits="WebApplication.ViaCep" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="center padding-top-60" style="padding-top: 60px;">
        <!--<h1>Cadastrar</h1>-->
        <div class="card border">
            <div style="background-color: white;" class="box border padding-14 center">

                <h2 style="padding-top: 15px; text-align: center; font-size: 30px;">Obter CEP</h2>
                <br />
                <asp:Label ID="Alerta" ForeColor="Red" FontSize="16px" runat="server"></asp:Label>
                <br />
                <asp:Label ID="UsuarioID" FontSize="30px" runat="server"></asp:Label>
                <br />


                <div style="display: flex" class="row">
                    <div style="display: flex" class="col-6">
                        <div style="width: 100%;" class="txt_field">
                            <label style="font-weight: bold;">CEP</label>
                            <asp:TextBox ID="CEP" MaxLength="8" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div style="display: flex; justify-content: center; align-items: center" class="col-6">
                        <asp:Button ID="Enviar" runat="server" Text="Pesquisar" OnClick="Enviar_Click" Style="width: 50%; height: 60%; font-weight: bold; font-size: 16px;" />
                    </div>

                    <br />
                </div>

                <!--********-->
                <div style="display: flex; /*flex-wrap: nowrap; gap: 150px; */">
                    <div style="display: flex" class="col-6">
                        <div class="txt_field" style="width: 100%;">
                            <label>Rua</label>
                            <asp:TextBox ID="Rua" MaxLegth="255" runat="server" disabled></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-6" style="display: flex; justify-content: center;">
                        <div class="txt_field" style="width: 50%;">
                            <label>Número</label>
                            <asp:TextBox ID="Numero" MaxLegth="255" runat="server"></asp:TextBox>
                        </div>
                    </div>

                </div>


                <div class="txt_field">
                </div>

                <div class="txt_field">
                </div>

                <div class="txt_field">

                    <label>Bairro</label>
                    <asp:TextBox ID="Bairro" MaxLegth="255" runat="server" disabled></asp:TextBox>

                </div>



                <!--////-->
                <div style="display: flex; /*flex-wrap: nowrap; gap: 150px; */">
                    <div style="display: flex" class="col-6">
                        <div class="txt_field" style="width: 100%;">
                            <label>Cidade</label>
                            <asp:TextBox ID="Cidade" MaxLegth="255" runat="server" disabled></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-6" style="display: flex; justify-content: center;">
                        <div class="txt_field" style="width: 50%;">

                            <label>UF</label>
                            <asp:TextBox ID="UF" MaxLegth="255" runat="server" disabled></asp:TextBox>
                        </div>
                    </div>

                </div>

                <div>
                    <asp:Button ID="Limpar" runat="server" Text="Limpar os campos" OnClick="Limpar_Click" Style="width: 20%; height: 60%; font-weight: bold; font-size: 14px; color: black; text-align: justify; background-color: white; border: none;" onmouseout="this.style.textDecoration='none'" onmouseOver="this.style.textDecoration='underline'" />

                </div>

            </div>

            <asp:Menu ID="Menu1" runat="server"></asp:Menu>

        </div>
    </div>
</asp:Content>
