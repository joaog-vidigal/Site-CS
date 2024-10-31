<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FaleConosco.aspx.cs" Inherits="WebApplication.FaleConosco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="row" style="padding-top:60px">
        <div class="col-6">
            <div class="box border margin-right-20 padding-14" style="background-color: white;">
                <h2 style="text-align:center; padding-top: 15px; font-size:30px; color: black;">Fale Conosco</h2>
                <br />
                <asp:Label ID="Alerta" Font-Size="16px" runat="server" ForeColor="Red"></asp:Label>

                <br />

                <asp:Panel ID="Formulario" runat="server">
                <label>Motivo</label>
                <asp:DropDownList ID="Motivo" runat="server">
                    <asp:ListItem Text="Selecione" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Sugestão" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Crítica" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Dúvidas" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Elogio" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Outros" Value="5"></asp:ListItem>
                </asp:DropDownList>


                <label>Nome</label>
                <asp:TextBox ID="Nome" MaxLength="100" runat="server"></asp:TextBox>

                <label>E-mail</label>
                <asp:TextBox ID="Email" TextMode="Email" runat="server"></asp:TextBox>

                <label>Mensagem</label>
                <asp:TextBox ID="Mensagem" MaxLength="255" TextMode="MultiLine" Rows="6" runat="server"></asp:TextBox>

                <asp:button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" style="width:100%"/>

            </asp:Panel>
            </div>
        </div>

        <div class="col-6">
            <div class="box border">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d405692.26021619124!2d-122.37075667113585!3d37.402345941600394!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fb68ad0cfc739%3A0x7eb356b66bd4b50e!2sVale%20do%20Sil%C3%ADcio%2C%20CA%2C%20EUA!5e0!3m2!1spt-BR!2sbr!4v1727806515929!5m2!1spt-BR!2sbr" width="100%" height="100%" style="border:0; border-radius: 20px" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
</asp:Content>
