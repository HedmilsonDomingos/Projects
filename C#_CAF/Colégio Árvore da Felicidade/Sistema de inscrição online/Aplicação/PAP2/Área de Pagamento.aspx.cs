using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using Camada_Modelo;
using Camada_Modelo.Classes;

namespace PAP2
{
    public partial class Área_de_Pagamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btn_Inserir_Perco_Propina_Click(object sender, EventArgs e)
        {
            Cls_Propinas Obj_propionas = new Cls_Propinas();
            string Nivel;
            decimal Preco;
            decimal Multa;
            decimal Total;
            Nivel = txt_Propinas_Nivel.Text;
            Preco = decimal.Parse(txt_Propina_preco.Text);
            Multa = decimal.Parse(txt_Multa_Propina.Text);
            Total = decimal.Parse(txt_Total_Propina.Text);

            if (Obj_propionas.Inseri_Propinas(Nivel, Preco, Multa, Total) == 1)
            {
                Response.Write("Popina Inserida");
            }
            else
            {
                Response.Write("Popina Não Inserida");
            }
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=EDMILSON\SQLEXPRESS;Initial Catalog=BD_Principal;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Selecionar_propina", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
        protected void btn_Actualiza_Preco_Propina_Click(object sender, EventArgs e)
        {
            Cls_Propinas Obj_Actualiza_Propina = new Cls_Propinas();
            int Id;
            decimal Novo_Preco, Nova_Multa, Novo_Total;

            Id = int.Parse(txt_Codigo_Nivel_Actualiza_Propina.Text);
            Novo_Preco = decimal.Parse(txt_Preco_novo.Text);
            Nova_Multa = decimal.Parse(txt_Nova_Multa.Text);
            Novo_Total = decimal.Parse(txt_Novo_Total_Propina.Text);

            if (Obj_Actualiza_Propina.Actualiza_Propinas(Id, Novo_Preco, Nova_Multa, Novo_Preco) == 1)
            {
                Response.Write("Preco Actualizado");
            }
            else
            {
                Response.Write("Preco Não Actualizado");
            }
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='silver'");

            //    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='white'");
            //}
        }
    }
}