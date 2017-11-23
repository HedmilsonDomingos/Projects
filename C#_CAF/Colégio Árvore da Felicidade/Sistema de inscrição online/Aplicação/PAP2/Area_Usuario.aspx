<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Area_Usuario.aspx.cs" Inherits="PAP2.Area_Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/css_Admi.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-weight: bold;
            text-align: center;
        }
        .auto-style3 {
            font-weight: bold;
            text-align: center;
            font-size: xx-large;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <div class="auto-style2">
            <span class="auto-style3"><strong><em>Área de Usuário</em></strong></span><br />
        <br />
        <br />
        </div>

        <div id="cont_Usuario">
         <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC" BorderWidth="4px" GroupingText="Area de Usuario" Height="312px" Width="683px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Cadastro&nbsp; </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;Remover</strong><br />
            <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
            <asp:TextBox ID="txt_Nome_Usuario" runat="server" Width="272px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Código do Usuario<asp:TextBox ID="txt_Elimina_Usuario" runat="server"></asp:TextBox>
            <br />
            &nbsp;<asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
            <asp:TextBox ID="txt_Senha_Usuario" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_Apagar_Usuario" runat="server" OnClick="btn_Apagar_Usuario_Click" Text="Apagar" Width="126px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_Adiciona_Usuario" runat="server" Height="23px" OnClick="btn_Adiciona_Usuario_Click" Text="Adicionar" />
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Height="22px" OnClick="Button2_Click" Text="Limpar" Width="91px" />
            &nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Height="22px" OnClick="Button4_Click" Text="Ver Usuarios" Width="98px" />
            <br />
            <br />
            <strong>&nbsp;Actualizar&nbsp;&nbsp; </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;Pesquisar </strong>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Insira o Novo Nome:"></asp:Label>
            <asp:TextBox ID="txt_Nome_Novo_Usuario" runat="server" Width="243px"></asp:TextBox>
            &nbsp;
            <asp:Label ID="Label7" runat="server" Text="Código do Usuario"></asp:Label>
            <asp:TextBox ID="txt_Pesquisar_Usuario" runat="server" Width="52px"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Height="22px" OnClick="Button3_Click" Text="Pesquisar" Width="73px" />
            <br />
            &nbsp;<asp:Label ID="Label4" runat="server" Text="Insira a Nova Senha:"></asp:Label>
            <asp:TextBox ID="txt_Nova_Senha" runat="server" Width="121px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Código do Usuario:"></asp:Label>
            <asp:TextBox ID="txt_Codigo_Usuario" runat="server" Width="82px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_Actualiza_Usuario" runat="server" Height="23px" OnClick="btn_Actualiza_Usuario_Click" Text="Actualizar" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>

            </div>

      </div>

         <div id="Controla_Gridview">
             <div class="auto-style4">
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
             </div>
    </form>
</body>
</html>
