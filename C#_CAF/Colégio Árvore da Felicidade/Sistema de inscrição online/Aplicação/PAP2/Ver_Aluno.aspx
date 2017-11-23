<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ver_Aluno.aspx.cs" Inherits="PAP2.Ver_Aluno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
* 
{
    margin:0;
    padding:0;
    border:0;
}


* 
{
    margin:0;
    padding:0;
    border:0;
}

  * {
    text-shadow: none !important;
    color: #000 !important;
    background: transparent !important;
    box-shadow: none !important;
  }
        .auto-style1 {
            color: White;
            font-weight: bold;
            background-color: #A55129;
        }
        .auto-style2 {
            color: #8C4510;
            background-color: #FFF7E7;
        }
    </style>
</head>
<body bgcolor="silver">
    <form id="form1" runat="server">
    <div>
    
            <span style="text-align: left">

                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                </span>
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="OK" Width="135px" />
    </form>
</body>
</html>
