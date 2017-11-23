<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Area_Uniforme.aspx.cs" Inherits="PAP2.Area_Usuario_E_Uniforme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/css_Admi.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            background-color: #CCCCCC;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style4 {
            text-align: left;
        }
    </style>

    <style type="text/css">

        body 
        {
            background:#37a181;
        }
         .auto-style6 {
            text-align: right;
            height: 36px;
            background-color: #999999;
        }
        .auto-style7 {
            font-size: large;
        }
         </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="auto-style1">
            <span class="auto-style2"><strong><em>Área de Uniforme</em></strong></span><br />
        </div>

        <strong>

        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Small" ForeColor="#7C6F57" StaticSubMenuIndent="10px" Orientation="Horizontal">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Area_Aluno.aspx" Text="Secretaria" Value="Secretaria"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Area_Uniforme.aspx" Text="Área de Uniforme" Value="Área de Uniforme"></asp:MenuItem>
                <asp:MenuItem Text="Pagamento de Propinas" Value="Pagamento de Propinas" NavigateUrl="~/Área de Pagamento.aspx"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Matriculas e Confirmações.aspx" Text="Área de Matrículas e Confirmações" Value="Área de Matrículas e Confirmações"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
        </strong>
        <br />
        <br />
        <br />
        <div id="cont_uniforme" class="auto-style4">
        <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC" BorderWidth="4px" GroupingText="Area de Uniforme" Height="355px" Width="695px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cadastro&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Elimina Compra<br /> &nbsp;&nbsp;
            <asp:Label ID="Label13" runat="server" Text="Descrição:"></asp:Label>
            <asp:TextBox ID="txt_Descricao_Uniforme" runat="server" Width="258px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label16" runat="server" Text="Código da Compra"></asp:Label>
            <asp:TextBox ID="txt_Elimina_Pedido_de_Compras_Adm" runat="server"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label14" runat="server" Text="Preço:"></asp:Label>
            <asp:TextBox ID="txt_Preco_Unifrome" runat="server" Width="205px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Height="18px" OnClick="Button3_Click" Text="Eliminar" Width="56px" />
            &nbsp;<asp:Button ID="Button4" runat="server" Height="18px" OnClick="Button4_Click" Text="Ver Compra" Width="79px" />
            <br />
            &nbsp;<asp:Label ID="Label15" runat="server" Text="Quantidade:"></asp:Label>
            <asp:TextBox ID="Txt_Quantidade_Unifrome" runat="server" Width="203px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adicionar" Height="18px" />
            &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Ver Uniforme" Height="18px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Eliminar Uniforme<br />&nbsp;<asp:Label ID="Label17" runat="server" Text="Código do Uniforme:"></asp:Label>
            <asp:TextBox ID="txt_Elimina_Uniforme" runat="server"></asp:TextBox>
            &nbsp;<asp:Button ID="Button5" runat="server" Height="18px" OnClick="Button5_Click" Text="Eliminar" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label27" runat="server" Text="Actualizar Preco de Uniforme"></asp:Label>
            <br />
            <asp:Label ID="Label28" runat="server" Text="Insira o Código do Uniforme:"></asp:Label>
            <asp:TextBox ID="txt_Codigo_Uniforme_Actualiza" runat="server" Height="16px" Width="146px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label29" runat="server" Text="Insira o Novo Preço:"></asp:Label>
            <asp:TextBox ID="tx_Novo_preco_Uniforme" runat="server"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_Actualiza_Preco_Uniforme" runat="server" OnClick="btn_Actualiza_Preco_Uniforme_Click" Text="Actualizar" Width="142px" Height="18px" />
        </asp:Panel>



            </div>

        <div id="Controla_Gridview">
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" OnRowDataBound="GridView1_RowDataBound" Width="703px" GridLines="Vertical">
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
        <br />
    </div>
        </div>
    </form>
    <div class="auto-style6">
        <em><span class="auto-style7">Área de uniforme</span></em>
        </div>
</body>
</html>
