<%@ Page Title="" Language="C#" MasterPageFile="~/Modelo.Master" AutoEventWireup="true" CodeBehind="Área de Pauta.aspx.cs" Inherits="PAP2.Área_de_Pauta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="Area_Pauta" style="text-align: center">

          <%--   <div id="Area_Aluno">
            Area_Aluno
             </div>

             <div id="Area_Professor">
            Area_Professor
             </div>

             <div id="Area_Pauta">
            Area_Pauta
             </div>

             <div id="Area_Uniforme">
            Area_Uniforme
             </div>--%>

          <span style="font-size: medium">Ver Pauta Ensino Primário e Secundário</span><br style="font-size: medium" />
          <span style="font-size: xx-large"><span style="font-style: italic">
          <asp:Label ID="Label18" runat="server" style="font-size: medium" Text="Selecione a classe:"></asp:Label>
          </span></span><span class="auto-style4" style="font-size: xx-large"><em style="font-style: italic; text-decoration: underline; font-weight: 700">
        <asp:DropDownList ID="dpl_Classe__Pauta_Manha_Visiuliza_Adm" runat="server" Height="29px" Width="126px">
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
          </em></span><em style="font-style: italic">
          <br style="font-size: medium" />
          </em>
          <asp:Button ID="btnm_Visualiza_Pauta_Manha_Adm" runat="server" OnClick="btnm_Visualiza_Pauta_Manha_Adm_Click" Text="Visualizar" Width="106px" />
          <span style="font-size: xx-large"><em style="font-style: italic"><span style="font-size: medium">
          <br />
          </span>
          </em></span><span class="auto-style4" style="font-size: xx-large"><span class="auto-style4" style="font-size: medium"><span style="font-style: italic; text-decoration: underline; font-weight: 700">
          <asp:GridView ID="GridV_Pauta_Manha_Adm" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" style="font-size: small">
              <AlternatingRowStyle BackColor="Gainsboro" />
              <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
              <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
              <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
              <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#0000A9" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#000065" />
          </asp:GridView>
          </span></span></span>
          <asp:Label ID="Label17" runat="server" CssClass="auto-style5" style="font-size: x-large" Text="Ensino Médio"></asp:Label>
          <span class="auto-style4" style="font-size: xx-large">
          <br />
          <asp:Label ID="Label19" runat="server" style="font-size: x-large" Text="Selecione a Classe:"></asp:Label>
            <asp:DropDownList ID="DplClasse_Pauta_Adm" runat="server" Height="24px" Width="91px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>10ª</asp:ListItem>
                <asp:ListItem>11ª</asp:ListItem>
                <asp:ListItem>12ª</asp:ListItem>
            </asp:DropDownList>
            <br />
          <asp:Label ID="Label20" runat="server" style="font-size: x-large" Text="Selecione o Curso:"></asp:Label>
            <asp:DropDownList ID="DplCurso_Pauta_Adm" runat="server" Height="18px" Width="227px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Eletrónica e Telecom</asp:ListItem>
                <asp:ListItem>Informática</asp:ListItem>
                <asp:ListItem>Ciências Físicas Biológicas</asp:ListItem>
            </asp:DropDownList>
            <br />
          <asp:Button ID="btn_Ver_Pauta_Ensino_Medio_Adm" runat="server" Text="Visualizar" Width="128px" OnClick="btn_Ver_Pauta_Ensino_Medio_Adm_Click" />
          <br />
          <asp:GridView ID="GridV_Pauta_Ensino_Medio_Adm" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" style="font-size: small">
              <AlternatingRowStyle BackColor="#DCDCDC" />
              <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
              <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
              <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
              <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#0000A9" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#000065" />
          </asp:GridView>
          <br />
          <br />
          <br />
          <br />
          </span></div>

    
             <div id="menu_Admi">
                    
                 <div id="dentro_menu_Admi">
                    <br />
            <br />

                     <a href="PáginadoAdministrador.aspx" class="link"><asp:Label ID="Label11" runat="server" Text="..................Home...................." style="color: #FFFFFF"></asp:Label></a>
            <br />
                     <br />
                     <a href="Área_Administrativa.aspx" class="link"><asp:Label ID="Label12" runat="server" Text="..............Área Aluno..............." style="color: #FFFFFF"></asp:Label></a>
            <br />
                     <br />
                     <a href="Área_Professor.aspx" class="link"><asp:Label ID="Label13" runat="server" Text="...........Área Professor..........." style="color: #FFFFFF"></asp:Label></a>
            <br />
                     <br />
                     <a href="Adm_Área%20de%20Pauta.aspx" class="link"><asp:Label ID="Label14" runat="server" Text="...........Área de Pautas..........." style="color: #FFFFFF"></asp:Label></a>
            <br />
                     <br />
                     <a href="Área de Uniforme.aspx" class="link"><asp:Label ID="Label15" runat="server" Text="..........Área de Uniforme........" style="color: #FFFFFF"></asp:Label></a>
                   
                   
                  </div>

             </div>


</asp:Content>
