<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="Perfil_Aluno.aspx.cs" Inherits="PAP2.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="contentor_perfil" style="left: 0px; bottom: -9px">

<div id="corpo_perfil">



<div id="dentro_corpo_perfil_Manha_1">
&nbsp;&nbsp;&nbsp;


    <asp:Image ID="Image7" runat="server" Height="155px" Width="155px" ImageUrl="~/imagens/Foto_User.gif" />
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Actualizar Foto" Width="155px" Height="18px" />


    <br />


    <br />
    
    <asp:Label ID="Label9" runat="server" Text="Nome Completo"></asp:Label>
    :<br />
    </div>

        </div>

<div id="menu_perfil">

     <br />

     <br />

     <a href="Home.aspx" class="link"><asp:Label ID="Label1" runat="server" Text="..................Home................." CssClass="auto-style8"></asp:Label></a>     
            <br />
    <a href="Perfil_Aluno.aspx" class="link"><asp:Label ID="Label6" runat="server" Text="..................Perfil.................." CssClass="auto-style8"></asp:Label></a>
            <br />
             <a href="Agenda.aspx" class="link"><asp:Label ID="Label3" runat="server" Text=".................Agenda..............." CssClass="auto-style8"></asp:Label></a>
      <a href="Eventos.aspx" class="link"><asp:Label ID="Label13" runat="server" Text=".................Eventos............." CssClass="auto-style8"></asp:Label></a>
            <br />
             <a href="Perfil_Aluno_Ver_Notas.aspx" class="link"><asp:Label ID="Label4" runat="server" Text="................Ver Notas............" CssClass="auto-style8"></asp:Label></a>
            <br />
             <a href="Perfil_Aluno_Pagar.aspx" class="link"><asp:Label ID="Label5" runat="server" Text="..............Pag.Propinas........" CssClass="auto-style8"></asp:Label></a>
            <br />
    <a href="Perfil_Aluno_Comprar.aspx" class="link"><asp:Label ID="Label2" runat="server" Text="............Comp.Uniforme......" CssClass="auto-style8"></asp:Label></a>
           
            </div>

    </div>
</asp:Content>
