<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="Galeria_Foto.aspx.cs" Inherits="PAP2.Galeria_Foto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="menu_gale" style="text-align: center; width: 200px; height: 278px;">

            <br />
            <br />

             <a href="Home.aspx" class="link"><asp:Label ID="Label1" runat="server" Text="..............Home.............." CssClass="auto-style8"></asp:Label></a>
            <br />
             <a href="Agenda.aspx" class="link"><asp:Label ID="Label9" runat="server" Text="..............Agenda............" CssClass="auto-style8"></asp:Label></a>
             <br />
             <a href="Eventos.aspx" class="link"><asp:Label ID="Label10" runat="server" Text="..............Eventos..........." CssClass="auto-style8"></asp:Label></a>
             <br />
             <a href="Galeria_Foto.aspx" class="link"><asp:Label ID="Label12" runat="server" Text="..............Galeria............." CssClass="auto-style8"></asp:Label></a>
             <br />
             <a href="Secretaria.aspx" class="link"><asp:Label ID="Label13" runat="server" Text="...........Serviços..........." CssClass="auto-style8"></asp:Label></a>
             <br />
             <a href="SobreColegio.aspx" class="link"><asp:Label ID="Label11" runat="server" Text="......Sobre o Colégio......" CssClass="auto-style8"></asp:Label></a>
            <br />
        </div>

    <div id="galeria">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image7" runat="server" Height="120px" ImageUrl="~/img/logo_caf.gif" Width="120px" />
&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image8" runat="server" Height="120px" ImageUrl="~/img/Palestra.JPG" Width="120px" />
&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image9" runat="server" Height="120px" ImageUrl="~/Foto_Galeria/27102011569.jpg" Width="120px" />
&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image10" runat="server" Height="120px" ImageUrl="~/imagens/Don_Franck.gif" Width="120px" />
&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image11" runat="server" Height="120px" ImageUrl="~/Foto_Galeria/SAM_3977.JPG" Width="120px" />
&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Logotipo do CAF&nbsp;&nbsp;&nbsp;&nbsp;Jornada Ciêntifica&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fera de Ciências&nbsp;&nbsp;&nbsp; Entrevista Prof&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fera de Ciências<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2011&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2011&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Franck.2011&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2011<br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Image ID="Image12" runat="server" Height="120px" ImageUrl="~/Foto_Galeria/SAM_4095.JPG" Width="120px" />
&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image13" runat="server" Height="120px" ImageUrl="~/img/Galeria.JPG" Width="120px" />
&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image14" runat="server" Height="120px" ImageUrl="~/Foto_Galeria/SAM_4190.JPG" Width="120px" />
&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image15" runat="server" Height="120px" ImageUrl="~/img/g (1).JPG" Width="120px" />
&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image16" runat="server" Height="120px" ImageUrl="~/img/g (2).JPG" Width="120px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fera de Ciências&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fera de Ciências&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fera de Ciências&nbsp;&nbsp;&nbsp;&nbsp; Fera de Ciências&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Professores em <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; entrevista Rádio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Teste de Sangue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Demostração do&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Projectos Electró-&nbsp;&nbsp;&nbsp;&nbsp; debates após o<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cazenga Prof&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Projecto Electro-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nicos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Festival<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Queta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nica<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image22" runat="server" Height="120px" ImageUrl="~/img/g (3).JPG" Width="120px" />
&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image23" runat="server" Height="120px" ImageUrl="~/img/g (4).JPG" Width="120px" />
&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image24" runat="server" Height="120px" ImageUrl="~/img/g (5).JPG" Width="120px" />
&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image25" runat="server" Height="120px" ImageUrl="~/img/lab.gif" Width="120px" />
&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image26" runat="server" Height="120px" ImageUrl="~/Foto_Galeria/SAM_3977.JPG" Width="120px" />

        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fera de Ciências&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fera de Ciências<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Projecto de Infor-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perjuntas sobre o<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mática&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Projecto

    </div>

   
</asp:Content>
