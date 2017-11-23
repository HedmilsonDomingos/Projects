<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Area_Direcao_Geral.aspx.cs" Inherits="PAP2.Area_Direcao_Geral" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/css_Admi.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            background-color: #C0C0C0;
        }
    </style>

     <style type="text/css">

        body 
        {
            background:#37a181;
        }
         .auto-style2 {
             font-size: medium;
             }
         .auto-style3 {
             text-align: right;
             font-size: xx-large;
             background-color: #C0C0C0;
             height: 43px;
         }
         .auto-style4 {
             text-align: center;
         }
         .auto-style5 {
             text-align: left;
         }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>Direccão Geral</strong>
        <br />

    </div>

        <strong>

        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Small" ForeColor="#7C6F57" StaticSubMenuIndent="10px" Orientation="Horizontal">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
        </strong>

      <br />
        <br />
        <br />

        <div id="cont_Direcao_Geral">


        <div id="Area_Pesquisa_Direcao_Geral_1">

            <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="4px" ForeColor="Black" GroupingText="Área de Pesquisa" Height="344px" BackColor="#CCCCCC">
                <br />
                <asp:Label ID="Label48" runat="server" Text="Código Pagamento:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_Pesquisar_Pagamento_DG" runat="server" Height="18px" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisar_Pagamento_Por_ID_DG" runat="server" Height="20px" Text="Ok" />
                &nbsp;&nbsp;<asp:Button ID="btn_Ver_Todos_Pagamento_DG" runat="server" Height="20px" Text="Ver Todos os Pagamento" Width="175px" />
                <br />
                <br />
                <asp:Label ID="Label49" runat="server" Text="Código do Professor:"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="txt_Pesquisar_Professor_DG" runat="server" Height="18px" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisar_Professor_Por_ID" runat="server" Height="20px" Text="Ok" />
                &nbsp;<asp:Button ID="btn_Ver_Todos_os_Professores" runat="server" Height="20px" Text="Ver Todos os Professores" Width="175px" />
                <br />
                <br />
                <asp:Label ID="Label50" runat="server" Text="Código do Uniforme:"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="txt_Pequisar_Uniforme_DG" runat="server" Height="18px" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisar_Uniforme_Por_ID_DG" runat="server" Height="20px" Text="Ok" OnClick="btn_Pesquisar_Uniforme_Por_ID_DG_Click" />
                &nbsp;
                <asp:Button ID="btn_Ver_Todos_Uniforme_DG" runat="server" Height="20px" Text="Ver Todos os Uniforme" Width="175px" OnClick="btn_Ver_Todos_Uniforme_DG_Click" />
                <br />
                <br />
                <asp:Label ID="Label51" runat="server" Text="Código da Venda Unif.:"></asp:Label>
                <asp:TextBox ID="txt_Pesquisar_Vendas_Uniforme_DG" runat="server" Height="18px" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisar_Vendas_Por_ID_DG" runat="server" Height="20px" Text="Ok" />
                &nbsp;<asp:Button ID="btn_Ver_Todas_Vendas" runat="server" Height="20px" Text="Ver Todas as Vendas" Width="175px" OnClick="btn_Ver_Todas_Vendas_Click" />
                <br />
                </asp:Panel>

        </div>

        <div id="Area_Pesquisa_Direcao_Geral_2" class="auto-style5">

            <asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" BorderWidth="4px" GroupingText="Área de Pesquisa" Height="345px" BackColor="#CCCCCC">
                <br />
                <asp:Label ID="Label38" runat="server" Text="Código da Inscrião"></asp:Label>
                :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Pesquisa_Inscricao_DG" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisa_Inscricao_DG" runat="server" OnClick="btn_Pesquisa_Inscricao_Click" Text="Ok" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Ver_Todas_Inscricoes_DG" runat="server" OnClick="btn_Ver_Todas_Inscricoes_Click" Text="Ver Todas Inscrições" Width="181px" />
                <br />
                <br />
                <asp:Label ID="Label32" runat="server" Text="Código da Turma:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Pesquisar_Turma_DG" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquizar_Turma_Por_Id_DG" runat="server" Height="18px" OnClick="btn_Pesquizar_Turma_Por_Id_Click" Text="Ok" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button7_DG" runat="server" Height="18px" Text="Ver Tadas as Turmas" Width="181px" OnClick="Button7_Click" />
                <br />
                <br />
                <asp:Label ID="Label33" runat="server" Text="Código da Sala:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Pesquisar_Sala_DG" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="Pesquisar_Sala_Por_Id_DG" runat="server" Height="18px" OnClick="Pesquisar_Sala_Por_Id_Click" Text="Ok" Width="24px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button8_DG" runat="server" Height="18px" Text="Ver Todas as Salas" Width="181px" OnClick="Button8_Click" />
                <br />
                <br />
                <asp:Label ID="Label34" runat="server" Text="Código do Periodo:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Código_do_Periodo_DG" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisar_Periodo_DG" runat="server" Height="18px" Text="Ok" OnClick="btn_Pesquisar_Periodo_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button9_DG" runat="server" Height="18px" Text="Ver Todos os Periodos" Width="181px" OnClick="Button9_Click" />
                <br />
                <br />
                <asp:Label ID="Label35" runat="server" Text="Código do Curso:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Codigo_do_Curso_DG" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisar_Curso_DG" runat="server" Height="18px" Text="Ok" OnClick="btn_Pesquisar_Curso_Click" style="width: 27px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button10_DG" runat="server" Height="18px" Text="Ver Todos os Cursos" Width="181px" OnClick="Button10_Click" />
                <br />
                <br />
                <asp:Label ID="Label39" runat="server" Text="Código Classe:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Pesquisa_Classe_DG" runat="server" Height="16px" Width="90px"></asp:TextBox>
                <asp:Button ID="Btn_Pesquisa_Classe_DG" runat="server" OnClick="Btn_Pesquisa_Classe_Click" Text="Ok" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Visualiza_Todas_Classe" runat="server" OnClick="btn_Visualiza_Todas_Classe_Click" Text="Ver Todas as Classes" Width="181px" />
                <br />
                <br />
                <asp:Label ID="Label36" runat="server" Text="Código da Matrícula:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Codigo_da_Matricula_DG" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisar_Matricula_DG" runat="server" Height="18px" OnClick="btn_Pesquisar_Matricula_Click" Text="Ok" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button12_DG" runat="server" Height="18px" Text="Ver Todas as Matrículas" Width="181px" OnClick="Button12_Click" />
                <br />
                <br />
                <asp:Label ID="Label37" runat="server" Text="Código da Confirmação:"></asp:Label>
                <asp:TextBox ID="txt_Codigo_da_Confirmacao_DG" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisar_Confirmacao" runat="server" AccessKey=" " Height="18px" Text="Ok" OnClick="btn_Pesquisar_Confirmacao_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button17" runat="server" OnClick="Button17_Click" Text="Ver Todas as Confirmações" Width="181px" />
                &nbsp;&nbsp;
                <br />
            </asp:Panel>

        </div>

            </div>


        <div id="Controla_Gridview">
    
            <br />
            <div class="auto-style4">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            </div>
        <div class="auto-style3">
    
        <strong><span class="auto-style2"><em>Direccão Geral Da Instituição</em></span></strong>
        <br />

    </div>
  </form>
</body>
</html>
