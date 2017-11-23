<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="Login_Administrodar.aspx.cs" Inherits="PAP2.Login_Administrodar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="img_Admi">
    
</div>
    <div id="txt_Admi">
        <br />
        &nbsp;<span style="color: #800000; font-size: large"><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Acesso Reservado<br />
        <br />
        <br />
        &nbsp;</em></strong></span><asp:Label ID="Label3" runat="server" Text="Nome:"></asp:Label>
        <asp:TextBox ID="txt_Nome_Admi" runat="server" Width="241px"></asp:TextBox>
        <br />
        &nbsp;<asp:Label ID="Label4" runat="server" Text="Senha:"></asp:Label>
        <asp:TextBox ID="txt_Senha_Admi" runat="server" TextMode="Password" Width="175px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label14" runat="server" Text="Área:"></asp:Label>
        <asp:DropDownList ID="dlp_Funcao" runat="server" Height="22px" Width="175px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Secretaria</asp:ListItem>
            <asp:ListItem> Direcção Pedagógica</asp:ListItem>
            <asp:ListItem>Área Administrativa</asp:ListItem>
            <asp:ListItem>Direcção Geral</asp:ListItem>
        </asp:DropDownList>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Entrar" OnClick="Button2_Click" Height="18px" Width="70px" />
&nbsp;&nbsp;
        <input id="Reset1" type="reset" value="Limpar" style="height: 18px; width: 70px" /></div>

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
