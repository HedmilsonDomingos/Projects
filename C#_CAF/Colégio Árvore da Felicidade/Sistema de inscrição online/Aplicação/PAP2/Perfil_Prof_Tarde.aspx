<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="Perfil_Prof_Tarde.aspx.cs" Inherits="PAP2.Perfil_Prof" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="contentor_perfil">

<div id="corpo_perfil">


    <%--<span style="font-family: Arial; font-size: large; text-decoration: blink"><strong>Meu Perfil</strong></span><br />--%>


    &nbsp;&nbsp;&nbsp;


    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label14" runat="server" style="font-weight: 700; font-size: x-large" Text="Inviar_Nota"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label22" runat="server" style="font-weight: 700; font-size: x-large" Text="Apaga_Nota"></asp:Label>
    <br />
        <asp:Label ID="Label15" runat="server" Text="Nome do Aluno:"></asp:Label>
        <asp:TextBox ID="txt_Nome_Pauta" runat="server" Width="304px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="Label25" runat="server" Text="Curso:"></asp:Label>
    <asp:DropDownList ID="dpl_Curso_Apaga_Nota" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Electrónica e Telecom</asp:ListItem>
        <asp:ListItem>Informática</asp:ListItem>
        <asp:ListItem>Ciência Fisicas e Biologica</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label17" runat="server" Text="Designação:"></asp:Label>
        <asp:DropDownList ID="Dpl_Designacao_Nota" runat="server" Height="22px" Width="223px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Parcelar</asp:ListItem>
            <asp:ListItem>Frequência</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:Label ID="Label24" runat="server" Text="Insira o Código do Aluno:"></asp:Label>
    <asp:TextBox ID="txt_Codigo_Apaga_Nota" runat="server" Width="108px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label18" runat="server" Text="Disciplina:"></asp:Label>
        <asp:TextBox ID="txt_Disciplina_Nota" runat="server" Width="221px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Label ID="Label26" runat="server" Text="Classe:"></asp:Label>
    <asp:DropDownList ID="dpl__Classe_Apaga_Nota" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>10ª</asp:ListItem>
        <asp:ListItem>11ª</asp:ListItem>
        <asp:ListItem>12ª</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label16" runat="server" Text="Tipo:"></asp:Label>
        <asp:DropDownList ID="dpl_Tipo__Nota" runat="server" Height="22px" Width="223px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Iº Trimestre</asp:ListItem>
            <asp:ListItem>IIº Trimestre</asp:ListItem>
            <asp:ListItem>IIIº Trimestre</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_Apaga_Nota" runat="server" Text="Apagar" Width="166px" OnClick="btn_Apaga_Nota_Click" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label19" runat="server" Text="Curso:"></asp:Label>
        <asp:DropDownList ID="DplCurso_Nota" runat="server" Height="25px" Width="227px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Eletrónica e Telecom</asp:ListItem>
            <asp:ListItem>Informática</asp:ListItem>
            <asp:ListItem>Ciências Físicas Biológicas</asp:ListItem>
        </asp:DropDownList>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label20" runat="server" Text="Classe:"></asp:Label>
        <asp:DropDownList ID="DplClasse_Nota" runat="server" Height="22px" Width="223px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>10ª</asp:ListItem>
            <asp:ListItem>11ª</asp:ListItem>
            <asp:ListItem>12ª</asp:ListItem>
        </asp:DropDownList>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label21" runat="server" Text="Nota:"></asp:Label>
        <asp:TextBox ID="txt_Nota_Pauta" runat="server" Width="97px"></asp:TextBox>
        &nbsp;&nbsp;
    <asp:Button ID="btn_limpar_Nota" runat="server" OnClick="btn_limpar_Nota_Click" Text="Limpar" Width="111px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="Btn_Enviar_Pauta" runat="server" OnClick="Button2_Click" Text="Enviar Nota" Width="228px" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label27" runat="server" style="font-size: x-large; font-weight: 700" Text="Visualizar_Pauta"></asp:Label>
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label28" runat="server" Text="Classe:"></asp:Label>
    <asp:DropDownList ID="dpl_Classe_Visualiza_Pauta_ensino_médio" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>10ª</asp:ListItem>
        <asp:ListItem>11ª</asp:ListItem>
        <asp:ListItem>12ª</asp:ListItem>
    </asp:DropDownList>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label29" runat="server" Text="Curso:"></asp:Label>
    <asp:DropDownList ID="dpl_Curso_Visualiza_Pauta_ensino_médio" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Informática</asp:ListItem>
        <asp:ListItem>Ciência Fisica e Biológica</asp:ListItem>
        <asp:ListItem>Electronica e Telecom</asp:ListItem>
    </asp:DropDownList>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_visualiza_pauta_ensino_medio" runat="server" Text="Ver" Width="90px" OnClick="btn_visualiza_pauta_ensino_medio_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_limpar" runat="server" OnClick="btn_limpar_Click" Text="Limpar" Width="97px" />
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="font-size: x-small">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
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
