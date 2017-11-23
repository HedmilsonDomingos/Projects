<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PAP2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id_Turma" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                Id_Turma:
                <asp:Label ID="Id_TurmaLabel" runat="server" Text='<%# Eval("Id_Turma") %>' />
                <br />
                Descricao:
                <asp:Label ID="DescricaoLabel" runat="server" Text='<%# Eval("Descricao") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD_Sistema_Inscrição_OnlineConnectionString2 %>" SelectCommand="SELECT [Id_Turma], [Descricao] FROM [Turma]"></asp:SqlDataSource>
    </form>
</body>
</html>
