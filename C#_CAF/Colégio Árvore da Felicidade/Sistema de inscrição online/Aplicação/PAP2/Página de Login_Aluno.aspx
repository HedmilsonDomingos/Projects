<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="Página de Login_Aluno.aspx.cs" Inherits="PAP2.Página_de_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div id="img">
    
</div>
    <div id="txt">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #800000; font-size: large"><strong><em>&nbsp;Acesso Reservado/Aluno</em></strong></span><br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Nome:"></asp:Label>
        <asp:TextBox ID="txtNome_Aluno" runat="server" Width="225px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Senha:"></asp:Label>
        <asp:TextBox ID="txt_Senha_Aluno" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Entrar" OnClick="Button2_Click" />
&nbsp;
        <input id="Reset1" type="reset" value="Limpar" /> </div>

    <div id="menu_login" style="text-align: center">

            <br />
            <br />

             <a href="Home.aspx" class="link"><asp:Label ID="Label1" runat="server" Text="..............Home.............." CssClass="auto-style8"></asp:Label></a>
            <br />
             <a href="Agenda.aspx" class="link"><asp:Label ID="Label9" runat="server" Text="..............Agenda............" CssClass="auto-style8"></asp:Label></a>
             <br />
             <a href="Eventos.aspx" class="link"><asp:Label ID="Label10" runat="server" Text="............Eventos............." CssClass="auto-style8"></asp:Label></a>
             <br />
             <a href="Galeria_Foto.aspx" class="link"><asp:Label ID="Label12" runat="server" Text="............Galeria..........." CssClass="auto-style8"></asp:Label></a>
             <br />
             <a href="Secretaria.aspx" class="link"><asp:Label ID="Label13" runat="server" Text="...........Serviços.........." CssClass="auto-style8"></asp:Label></a>
             <br />
             <a href="SobreColegio.aspx" class="link"><asp:Label ID="Label11" runat="server" Text=".....Sobre o Colégio......" CssClass="auto-style8"></asp:Label></a>
            <br />
        </div>
    
</asp:Content>
