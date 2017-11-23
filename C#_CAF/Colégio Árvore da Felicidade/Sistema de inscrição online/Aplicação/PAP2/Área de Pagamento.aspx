<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Área de Pagamento.aspx.cs" Inherits="PAP2.Área_de_Pagamento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/css_Admi.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            background-color: #CCCCCC;
        }
    </style>

    <style type="text/css">

        body 
        {
            background:#37a181;
        }
         .auto-style2 {
            text-align: right;
            height: 43px;
            font-size: large;
            background-color: #CCCCCC;
        }
         </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong><em>Pagamento de Propinas</em></strong></div>

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

        <div id="cont_uniforme">
                 <br />
                 <br />
                 <asp:Panel ID="Panel2" runat="server" Height="330px" Width="695px" BorderWidth="4px" BackColor="#CCCCCC" GroupingText="Cadastro">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <br />
                     &nbsp;<asp:Label ID="Label24" runat="server" Text="Nível:"></asp:Label>
                &nbsp;<asp:TextBox ID="txt_Propinas_Nivel" runat="server" Width="333px"></asp:TextBox>
                <br />
                <asp:Label ID="Label19" runat="server" Text="Preço"></asp:Label>
                :
                <asp:TextBox ID="txt_Propina_preco" runat="server"></asp:TextBox>
                <br />
&nbsp;<asp:Label ID="Label22" runat="server" Text="Multa:"></asp:Label>
                <asp:TextBox ID="txt_Multa_Propina" runat="server"></asp:TextBox>
                <asp:Label ID="Label23" runat="server" Text="Total:"></asp:Label>
                <asp:TextBox ID="txt_Total_Propina" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="btn_Perco_Propina" runat="server" Height="20px" OnClick="btn_Inserir_Perco_Propina_Click" Text="Inserir Propinas" Width="151px" />
&nbsp;
             <asp:Button ID="btn_Ver_Todas_Propinas" runat="server" Height="20px" OnClick="Button7_Click" Text="Ver Preços de Propinas" Width="162px" />
             <br />
             <br />
             Actualizar Propinas<br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label20" runat="server" Text="Código do Nível:"></asp:Label>
                <asp:TextBox ID="txt_Codigo_Nivel_Actualiza_Propina" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label21" runat="server" Text="Insira o Novo Preço:"></asp:Label>
                <asp:TextBox ID="txt_Preco_novo" runat="server"></asp:TextBox>
                <br />
                &nbsp;<asp:Label ID="Label25" runat="server" Text="Insira a Nova Multa:"></asp:Label>
                <asp:TextBox ID="txt_Nova_Multa" runat="server"></asp:TextBox>
                <br />
                &nbsp;
                <asp:Label ID="Label26" runat="server" Text="Insira o Novo Total:"></asp:Label>
                <asp:TextBox ID="txt_Novo_Total_Propina" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btn_Actualiza_Preco_de_Propina" runat="server" Text="Actualizar" Width="91px" OnClick="btn_Actualiza_Preco_Propina_Click" Height="21px" />
                <br />
            </asp:Panel>
            </div>
        <div id="Controla_Gridview">
        <br />
           
            <br />
            <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" OnRowDataBound="GridView2_RowDataBound" Width="703px" GridLines="Vertical">
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
    </form>
    <p class="auto-style2">
        <em>Área de Pagamento</p>
</body>
</html>
