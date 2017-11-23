<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="Perfíl_Prof_Manhã.aspx.cs" Inherits="PAP2.Perfíl_Prof_Manhã" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div id="contentor_perfil_Manha">

<div id="corpo_perfil_Manha">


    <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label22" runat="server" style="font-weight: 700; font-size: xx-large" Text="Apaga_Nota"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label24" runat="server" Text="Insira o Código do Aluno:"></asp:Label>
    <asp:TextBox ID="txt_Nome_Apaga_Nota" runat="server" Width="108px"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label26" runat="server" Text="Classe:"></asp:Label>
    <asp:DropDownList ID="dpl__Classe_Apaga_Nota" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Pré</asp:ListItem>
        <asp:ListItem Value="1ª">1ª</asp:ListItem>
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
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label25" runat="server" Text="Curso:"></asp:Label>
    <asp:DropDownList ID="dpl_Curso_Apaga_Nota" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Electrónica e Telecom</asp:ListItem>
        <asp:ListItem>Informática</asp:ListItem>
        <asp:ListItem>Ciência Fisicas e Biologica</asp:ListItem>
    </asp:DropDownList>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_Apaga_Nota_Manha" runat="server" Text="Apagar" Width="166px" OnClick="btn_Apaga_Nota_Click" />
    <br />--%>&nbsp;&nbsp;&nbsp;


    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label14" runat="server" style="font-weight: 700; font-size: x-large" Text="Inviar_Nota_Manhã"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label24" runat="server" Font-Size="X-Large" style="font-weight: 700" Text="Área de Remoção de Nota "></asp:Label>
    <br />
        <asp:Label ID="Label15" runat="server" Text="Nome do Aluno:"></asp:Label>
        <asp:TextBox ID="txt_Nome_Pauta_Manha" runat="server" Width="304px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label22" runat="server" Text="Código do Aluno"></asp:Label>
    :<asp:TextBox ID="txt_Codigo_Apaga_Nota_Aluno_Manha" runat="server" Width="121px"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label17" runat="server" Text="Designação:"></asp:Label>
        <asp:DropDownList ID="Dpl_Designacao_Nota_Manha" runat="server" Height="22px" Width="223px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Parcelar</asp:ListItem>
            <asp:ListItem>Frequência</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label23" runat="server" Text="Classe:"></asp:Label>
        <asp:DropDownList ID="dpl_Classe__Nota_Manha_Apaga" runat="server" Height="29px" Width="126px">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label18" runat="server" Text="Disciplina:"></asp:Label>
        <asp:TextBox ID="txt_Disciplina_Nota_Manha" runat="server" Width="221px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_Apaga_Nota_Amanha" runat="server" OnClick="btn_Apaga_Nota_Amanha_Click" Text="Remover" Width="117px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label16" runat="server" Text="Tipo:"></asp:Label>
        <asp:DropDownList ID="dpl_Tipo__Nota_Manha" runat="server" Height="22px" Width="223px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Iº Trimestre</asp:ListItem>
            <asp:ListItem>IIº Trimestre</asp:ListItem>
            <asp:ListItem>IIIº Trimestre</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Limpar" Width="117px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label20" runat="server" Text="Classe:"></asp:Label>
        <asp:DropDownList ID="DplClasse_Nota_Manha" runat="server" Height="22px" Width="223px">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label21" runat="server" Text="Nota:"></asp:Label>
        <asp:TextBox ID="txt_Nota_Pauta_Manha" runat="server" Width="97px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Enviar_Nota_Manha" runat="server" Height="18px" OnClick="Enviar_Nota_Manha_Click" Text="Enviar" Width="105px" />
    &nbsp;
    <asp:Button ID="Button1" runat="server" Height="18px" OnClick="Button1_Click" Text="Limpar" Width="118px" />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label25" runat="server" style="font-size: x-large; font-weight: 700" Text="Área de Visualização"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label26" runat="server" Text="Selecione a Pauta a ser visualizada"></asp:Label>
        <br />
        <asp:DropDownList ID="dpl_Classe__Nota_Manha_Visiuliza" runat="server" Height="29px" Width="126px">
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
    <asp:Button ID="Btn_Visuliza_Pauta_Manha" runat="server" Text="Visualizar" Width="143px" OnClick="Btn_Visuliza_Pauta_Manha_Click" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <br />
&nbsp;<%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label22" runat="server" style="font-weight: 700; font-size: xx-large" Text="Apaga_Nota"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label24" runat="server" Text="Insira o Código do Aluno:"></asp:Label>
    <asp:TextBox ID="txt_Nome_Apaga_Nota" runat="server" Width="108px"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label26" runat="server" Text="Classe:"></asp:Label>
    <asp:DropDownList ID="dpl__Classe_Apaga_Nota" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Pré</asp:ListItem>
        <asp:ListItem Value="1ª">1ª</asp:ListItem>
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
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label25" runat="server" Text="Curso:"></asp:Label>
    <asp:DropDownList ID="dpl_Curso_Apaga_Nota" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Electrónica e Telecom</asp:ListItem>
        <asp:ListItem>Informática</asp:ListItem>
        <asp:ListItem>Ciência Fisicas e Biologica</asp:ListItem>
    </asp:DropDownList>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_Apaga_Nota_Manha" runat="server" Text="Apagar" Width="166px" OnClick="btn_Apaga_Nota_Click" />
    <br />--%>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
    <br />
        <br />
        <br />
        </div>

<div id="menu_perfil_Manha">

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
