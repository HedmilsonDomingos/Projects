<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Area_Pedagogica.aspx.cs" Inherits="PAP2.Area_Pedagogica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <link href="css/css_Admi.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            background-color: #C0C0C0;
        }
        .auto-style2 {
            height: 419px;
        }
        .auto-style3 {
            height: 346px;
        }
        .auto-style4 {
            font-size: medium;
        }
    </style>

  <style type="text/css">

        body 
        {
            background:#37a181;
        }
        .auto-style6 {
          text-align: right;
          background-color: #CCCCCC;
          height: 41px;
      }
        .auto-style7 {
          text-align: center;
      }
        </style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>Direcção Pedadogógica</strong>
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

        <div id="cont_Pedagogia">

            <div id="Area_Visualizacao_Pedagogica" class="auto-style2">

            <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="4px" ForeColor="Black" GroupingText="Área de Pautas" Height="345px" Width="492px" BackColor="#CCCCCC">
                <br />
                <asp:Label ID="Label40" runat="server" CssClass="auto-style4" Text="Descrição da Turma:"></asp:Label>
                <asp:TextBox ID="txt_Pesquisar_Descricao_Turma" runat="server" Height="18px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Height="18px" Text="Ver" />
                &nbsp;<asp:Button ID="Button2" runat="server" Height="19px" Text="Ver todas as Pautas" Width="150px" />
                <br />
                <br />
                Actualizar Nota<strong><br />
                <br />
                </strong>
                <asp:Label ID="Label42" runat="server" Text="Nº do Processo:"></asp:Label>
                <asp:TextBox ID="txt_Numero_do_Processo" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label41" runat="server" Text="Nova Nota:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Nova_Nota" runat="server"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Actualizar_Nota" runat="server" Height="18px" Text="Alterar" Width="66px" />
                &nbsp;<asp:Button ID="Button3" runat="server" Height="18px" Text="Limpar" Width="68px" />
                <br />
                <br />
                </asp:Panel>

            <br />
            </div>

        <div id="Area_Actualizacao_Pedagogia" class="auto-style3">

            <asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" BorderWidth="4px" GroupingText="Área de Pesquisa" Height="345px" BackColor="#CCCCCC">
                <br />
                <asp:Label ID="Label38" runat="server" Text="Código da Inscrião" CssClass="auto-style4"></asp:Label>
                :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Pesquisa_Inscricao_D_P" runat="server" Width="90px" Height="18px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisa_Inscricao_D_P" runat="server" OnClick="btn_Pesquisa_Inscricao_Click" Text="Ok" Height="18px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Ver_Todas_Inscricoes_D_P" runat="server" OnClick="btn_Ver_Todas_Inscricoes_Click" Text="Ver Todas Inscrições" Width="181px" Height="19px" />
                <br />
                <br />
                <asp:Label ID="Label32" runat="server" Text="Código da Turma:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Pesquisar_Turma_D_P" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquizar_Turma_Por_Id_D_P" runat="server" Height="18px" OnClick="btn_Pesquizar_Turma_Por_Id_Click" Text="Ok" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button7_D_P" runat="server" Height="19px" Text="Ver Tadas as Turmas" Width="181px" OnClick="Button7_Click" />
                <br />
                <br />
                <asp:Label ID="Label33" runat="server" Text="Código da Sala:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Pesquisar_Sala_D_P" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="Pesquisar_Sala_Por_Id_D_P" runat="server" Height="18px" OnClick="Pesquisar_Sala_Por_Id_Click" Text="Ok" Width="24px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button8_D_P" runat="server" Height="19px" Text="Ver Todas as Salas" Width="181px" OnClick="Button8_Click" />
                <br />
                <br />
                <asp:Label ID="Label34" runat="server" Text="Código do Periodo:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Código_do_Periodo_D_P" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisar_Periodo_D_P" runat="server" Height="18px" Text="Ok" OnClick="btn_Pesquisar_Periodo_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button9_D_P" runat="server" Height="19px" Text="Ver Todos os Periodos" Width="181px" OnClick="Button9_Click" />
                <br />
                <br />
                <asp:Label ID="Label35" runat="server" Text="Código do Curso:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Codigo_do_Curso_D_P" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisar_Curso_D_P" runat="server" Height="18px" Text="Ok" OnClick="btn_Pesquisar_Curso_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button10_D_P" runat="server" Height="19px" Text="Ver Todos os Cursos" Width="181px" OnClick="Button10_Click" />
                <br />
                <br />
                <asp:Label ID="Label39" runat="server" Text="Código Classe:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Pesquisa_Classe_D_P" runat="server" Height="16px" Width="90px"></asp:TextBox>
                <asp:Button ID="Btn_Pesquisa_Classe_D_P" runat="server" OnClick="Btn_Pesquisa_Classe_Click" Text="Ok" Height="18px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Visualiza_Todas_Classe_D_P" runat="server" OnClick="btn_Visualiza_Todas_Classe_Click" Text="Ver Todas as Classes" Width="181px" Height="19px" />
                <br />
                <br />
                <asp:Label ID="Label36" runat="server" Text="Código da Matrícula:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Codigo_da_Matricula_D_P" runat="server" Width="90px"></asp:TextBox>
                <asp:Button ID="btn_Pesquisar_Matricula" runat="server" Height="18px" OnClick="btn_Pesquisar_Matricula_Click" Text="Ok" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button12_D_P" runat="server" Height="19px" Text="Ver Todas as Matrículas" Width="181px" OnClick="Button12_Click" />
                <br />
            </asp:Panel>

        </div>


            </div>

        <div id="Controla_Gridview">
            <br />
            <div class="auto-style7">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" OnRowDataBound="GridView1_RowDataBound" GridLines="Vertical">
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

    </form>

    <div class="auto-style6">
        <em><strong><span class="auto-style4">Direcção Pedadogógica</span></strong></em></div>

</body>
</html>
