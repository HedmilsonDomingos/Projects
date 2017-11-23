<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="Perfil_Prof.aspx.cs" Inherits="PAP2.Perfil_Prof" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="contentor_perfil">

<div id="corpo_perfil">


    <%--<span style="font-family: Arial; font-size: large; text-decoration: blink"><strong>Meu Perfil</strong></span><br />--%>


    &nbsp;&nbsp;&nbsp;


    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label14" runat="server" style="font-weight: 700; font-size: xx-large" Text="Pauta"></asp:Label>
    <br />
    <asp:Panel ID="Panel1" runat="server" BorderColor="Maroon" BorderStyle="Solid" Height="134px">
        <br />
        <asp:Label ID="Label15" runat="server" Text="Nome do Aluno:"></asp:Label>
        <asp:TextBox ID="txt_Nome_Pauta" runat="server" Width="434px"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label17" runat="server" Text="Designação:"></asp:Label>
        <asp:DropDownList ID="Dpl_Designacao_Nota" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Parcelar</asp:ListItem>
            <asp:ListItem>Frequência</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:Label ID="Label18" runat="server" Text="Disciplina:"></asp:Label>
        <asp:DropDownList ID="dpl_Disciplina_Nota" runat="server" Height="22px" Width="140px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Língua Portuguesa</asp:ListItem>
            <asp:ListItem>Matemática</asp:ListItem>
            <asp:ListItem>Geografia</asp:ListItem>
            <asp:ListItem>História</asp:ListItem>
            <asp:ListItem>E.M.C</asp:ListItem>
            <asp:ListItem>E.V.P</asp:ListItem>
            <asp:ListItem>Educação Musical</asp:ListItem>
            <asp:ListItem>Biologia</asp:ListItem>
            <asp:ListItem>Química</asp:ListItem>
            <asp:ListItem>Física</asp:ListItem>
            <asp:ListItem>F.A.I</asp:ListItem>
            <asp:ListItem>O.G.I</asp:ListItem>
            <asp:ListItem>T.R.E.I</asp:ListItem>
            <asp:ListItem>T.L.P</asp:ListItem>
            <asp:ListItem>T.I.C</asp:ListItem>
            <asp:ListItem>S.E.A.C</asp:ListItem>
            <asp:ListItem>P.T</asp:ListItem>
            <asp:ListItem>P.O</asp:ListItem>
            <asp:ListItem>INGLÊS</asp:ListItem>
            <asp:ListItem>ED. FÍSICA</asp:ListItem>
            <asp:ListItem>ELECTROTÉCNIA</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label16" runat="server" Text="Tipo:"></asp:Label>
        <asp:DropDownList ID="dpl_Tipo__Nota" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Iº Trimestre</asp:ListItem>
            <asp:ListItem>IIº Trimestre</asp:ListItem>
            <asp:ListItem>IIIº Trimestre</asp:ListItem>
        </asp:DropDownList>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label19" runat="server" Text="Curso:"></asp:Label>
        <asp:DropDownList ID="DplCurso_Nota" runat="server" Height="25px" Width="227px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Eletrónica e Telecom</asp:ListItem>
            <asp:ListItem>Informática</asp:ListItem>
            <asp:ListItem>Ciências Físicas Biológicas</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label20" runat="server" Text="Classe:"></asp:Label>
        <asp:DropDownList ID="DplClasse_Nota" runat="server" Height="24px" Width="91px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Prè</asp:ListItem>
            <asp:ListItem>1ª</asp:ListItem>
            <asp:ListItem>2ª</asp:ListItem>
            <asp:ListItem>3ª</asp:ListItem>
            <asp:ListItem>4ª</asp:ListItem>
            <asp:ListItem>5ª</asp:ListItem>
            <asp:ListItem>6ª</asp:ListItem>
            <asp:ListItem>7ª</asp:ListItem>
            <asp:ListItem>8ª</asp:ListItem>
            <asp:ListItem>9ª</asp:ListItem>
            <asp:ListItem>10ª</asp:ListItem>
            <asp:ListItem>11ª</asp:ListItem>
            <asp:ListItem>12ª</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:Label ID="Label21" runat="server" Text="Nota:"></asp:Label>
        <asp:DropDownList ID="dpl_Nota" runat="server" Height="24px" Width="62px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>0.5</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>1.5</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>2.5</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>3.5</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>4.5</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>5.5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>6.5</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>7.5</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>8.5</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>9.5</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>10.5</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>11.5</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>12.5</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>13.5</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>14.5</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>15.5</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>16.5</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>17.5</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>18.5</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>19.5</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
        </asp:DropDownList>
        <br />
    </asp:Panel>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Btn_Enviar_Pauta" runat="server" OnClick="Button2_Click" Text="Enviar Nota" Width="185px" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Btn_Inseri_Pauta" runat="server" Text="Button" Width="161px" />
    <br />
        <br />
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
