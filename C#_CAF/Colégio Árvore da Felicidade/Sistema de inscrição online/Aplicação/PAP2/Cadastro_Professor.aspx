<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="Cadastro_Professor.aspx.cs" Inherits="PAP2.Cadastro_Professor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="cadastroProfessor">



        <asp:Panel ID="Panel1" runat="server" BorderColor="#990000" BorderStyle="Dotted" BorderWidth="5px" Height="500px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="XX-Large" style="text-decoration: underline" Text="Informe aqui o seu C. Vitae"></asp:Label>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Nome Completo:" style="font-weight: 700"></asp:Label>
            <asp:TextBox ID="txtNome_Prof" runat="server" Width="420px"></asp:TextBox>
            <br />
            <strong>
            <asp:Label ID="Label21" runat="server" Text="B.I:"></asp:Label>
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_NBI_Prof" runat="server" Width="210px"></asp:TextBox>
            <br />
            <strong>
            <asp:Label ID="Label19" runat="server" Text="Indique o caminho do teu C.V aqui:"></asp:Label>
            </strong>&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Width="289px" />
            <br />
            <br />
            <strong>
            <asp:Label ID="Label20" runat="server" Text="Status do envio.:"></asp:Label>
            </strong>
            <asp:Label ID="lbStatus" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_Enviar_CV" runat="server" OnClick="btn_Enviar_CV_Click" Text="Enviar" Width="91px" Height="18px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="Reset1" type="reset" value="Limpar" style="height: 18px" />
        </asp:Panel>



    </div>
</asp:Content>
