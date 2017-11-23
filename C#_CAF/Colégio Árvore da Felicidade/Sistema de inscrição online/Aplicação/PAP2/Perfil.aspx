<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="PAP2.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="contentor_perfil">

<div id="corpo_perfil">


    <%--<span style="font-family: Arial; font-size: large; text-decoration: blink"><strong>Meu Perfil</strong></span><br />--%>


    &nbsp;&nbsp;&nbsp;


    <br />
&nbsp;&nbsp;&nbsp;


    <asp:Image ID="Image7" runat="server" Height="155px" Width="155px" ImageUrl="~/imagens/Foto_User.gif" />
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Actualizar Foto" Width="155px" />


    <br />
    <asp:Label ID="Label9" runat="server" Text="Nome Completo"></asp:Label>
    :<br />
    <asp:Label ID="Label10" runat="server" Text="Curso"></asp:Label>
    :<br />
    <asp:Label ID="Label11" runat="server" Text="Turma"></asp:Label>
    :<br />
    <asp:Label ID="Label12" runat="server" Text="Sala"></asp:Label>
    :<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>

<div id="menu_perfil">

     <br />

     <br />

     <a href="Home.aspx" class="link"><asp:Label ID="Label1" runat="server" Text="..................Home................." CssClass="auto-style8"></asp:Label></a>
                       
            <br />
             <a href="Agenda.aspx" class="link"><asp:Label ID="Label3" runat="server" Text="................Agenda.............." CssClass="auto-style8"></asp:Label></a>
      <a href="Eventos.aspx" class="link"><asp:Label ID="Label13" runat="server" Text="................Eventos............" CssClass="auto-style8"></asp:Label></a>
            <br />
             <a href="Home.aspx" class="link"><asp:Label ID="Label4" runat="server" Text="................Boletins.............." CssClass="auto-style8"></asp:Label></a>
            <br />
             <a href="Matrícula.aspx" class="link"><asp:Label ID="Label5" runat="server" Text="..............Resultados.........." CssClass="auto-style8"></asp:Label></a>
            <br />
    <a href="Home.aspx" class="link"><asp:Label ID="Label2" runat="server" Text=".............Confirmação.........." CssClass="auto-style8"></asp:Label></a>
           
            </div>



    </div>



</asp:Content>
