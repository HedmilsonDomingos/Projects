using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;
using Camada_Modelo;
using Camada_Modelo.Classes;

namespace PAP2
{
    public partial class Area_Usuario_E_Uniforme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClsUniforme Adiciona_Uni = new ClsUniforme();
            string Titulo_Uniforme;
            int Quantidade_Adicionar;
            decimal Preco_do_Uniforme;
            Titulo_Uniforme = txt_Descricao_Uniforme.Text;
            Quantidade_Adicionar = int.Parse(Txt_Quantidade_Unifrome.Text);
            Preco_do_Uniforme = decimal.Parse(txt_Preco_Unifrome.Text);

            Adiciona_Uni.Adiciona_Uniforme(Titulo_Uniforme, Quantidade_Adicionar, Preco_do_Uniforme);
            Response.Write(" Uniforme Adicionado");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ClsUniforme Elimina = new ClsUniforme();
            int Codigo;
            Codigo = int.Parse(txt_Elimina_Pedido_de_Compras_Adm.Text);
            Elimina.Elimina_Compra(Codigo);
            Response.Write("Encomenda Eliminada Com Sucesso");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Ver_Todas_Encomenda", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Selecionar_Uniforme", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            ClsUniforme Obj_Elimina_Uniforme = new ClsUniforme();

            int Codigo_Uniforme;
            Codigo_Uniforme = int.Parse(txt_Elimina_Uniforme.Text);
            Obj_Elimina_Uniforme.Elimina_Uniforme(Codigo_Uniforme);
            Response.Write("Uniforme Removido Com Sucesso");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='silver'");

            //    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='white'");
            //}
        }

        //protected void btn_Inserir_Perco_Propina_Click(object sender, EventArgs e)
        //{
                    
        //}

        //protected void btn_Actualiza_Preco_Propina_Click(object sender, EventArgs e)
        //{

        //}

        //protected void Button7_Click(object sender, EventArgs e)
        //{
            
        //}

        protected void btn_Actualiza_Preco_Uniforme_Click(object sender, EventArgs e)
        {
            ClsUniforme Obj_Actualiza_Preco_Uniforme = new ClsUniforme();

            int Codigo_Uniforme;
            decimal Preco_Novo;

            Codigo_Uniforme = int.Parse(txt_Codigo_Uniforme_Actualiza.Text);
            Preco_Novo = decimal.Parse(tx_Novo_preco_Uniforme.Text);
            if (Obj_Actualiza_Preco_Uniforme.Actualiza_Preco_Uniforme(Codigo_Uniforme, Preco_Novo) == 1)
            {
                Response.Write("Preço Actualizado");
            }
            else 
            {
                Response.Write("Preço Não Actualizado! Por Favor Verifica o Códigom");
            }
        }
    }
}