<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="Perfil_Aluno_Ver_Notas.aspx.cs" Inherits="PAP2.Perfil_Aluno_Ver_Notas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div id="contentor_perfil">

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
    <br />
    </div>


    <div id="dentro_corpo_perfil_Manha_3">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label23" runat="server" style="font-weight: 700; font-style: italic; font-size: large;" Text="Vizualizar Pauta"></asp:Label>
        <br />
    <br />
    <asp:Label ID="Label26" runat="server" Text="Nome:"></asp:Label>
&nbsp; <asp:TextBox ID="txt_Nome_da_Consulta" runat="server" Width="235px"></asp:TextBox>
    <br />
    <asp:Label ID="Label25" runat="server" Text="Código:"></asp:Label>
    <asp:TextBox ID="txt_Codigo_da_Consulta" runat="server" Width="115px"></asp:TextBox>
    <br />
    <asp:Label ID="Label24" runat="server" Text="Classe:"></asp:Label>
        <asp:DropDownList ID="dpl_Classe_Nota_Ver" runat="server" Height="21px" Width="115px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Pre</asp:ListItem>
            <asp:ListItem>1ª</asp:ListItem>
            <asp:ListItem>2ª</asp:ListItem>
            <asp:ListItem>3ª</asp:ListItem>
            <asp:ListItem>4ª</asp:ListItem>
            <asp:ListItem>5ª</asp:ListItem>
            <asp:ListItem>6ª</asp:ListItem>
            <asp:ListItem>7ª</asp:ListItem>
            <asp:ListItem>8ª</asp:ListItem>
            <asp:ListItem>9ª</asp:ListItem>
        </asp:DropDownList>
        <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_Ver_Nota" runat="server" OnClick="btn_Ver_Click" Text="Ver Nota" Width="114px" Height="18px" />
    <br />
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
