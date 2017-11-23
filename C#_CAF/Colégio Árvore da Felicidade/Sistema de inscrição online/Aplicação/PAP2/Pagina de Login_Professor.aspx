<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="Pagina de Login_Professor.aspx.cs" Inherits="PAP2.Pagina_de_Login_Professor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="imgp">

</div>
    <div id="txtp">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #800000; font-size: large"><strong><em>Acesso Reservado/Professor</em></strong></span><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
&nbsp; <asp:TextBox ID="txt_Nome_Professor" runat="server" Width="224px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Senha:"></asp:Label>
&nbsp;<asp:TextBox ID="txt_Senha_Professor" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
        &nbsp;<br />
        <asp:Label ID="Label15" runat="server" Text="Turno:"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="Dpl_Turno_Login" runat="server" Height="20px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Manhã</asp:ListItem>
            <asp:ListItem>Tarde</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Entrar" OnClick="Button2_Click" />
&nbsp;
        <input id="Reset1" type="reset" value="Limpar" /></div>
     <div id="menu_login" style="text-align: center; width: 200px; height: 278px;">

            <br />
            <br />

             <a href="Home.aspx" class="link"><asp:Label ID="Label3" runat="server" Text="..............Home.............." CssClass="auto-style8"></asp:Label></a>
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
