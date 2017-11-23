using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Camada_Modelo;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
namespace PAP2
{
    public partial class Area_Usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Adiciona_Usuario_Click(object sender, EventArgs e)
        {
            Usuario Adiciona_Uso = new Usuario();

            string _Nome;
            string _Senha;


            _Nome = txt_Nome_Usuario.Text;
            _Senha = txt_Senha_Usuario.Text;

            Adiciona_Uso.Adiciona_Usuario(_Nome, _Senha);

            Response.Write("Usuario Adicionado");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txt_Nome_Usuario.Text = "";
            txt_Senha_Usuario.Text = "";
        }

        protected void btn_Apagar_Usuario_Click(object sender, EventArgs e)
        {
            Usuario Elimenar_Usuário = new Usuario();

            int ID;

            ID = int.Parse(txt_Elimina_Usuario.Text);

            Elimenar_Usuário.Remove_Usuario(ID);
            Response.Write("Usuário Removido");
        }

        protected void btn_Actualiza_Usuario_Click(object sender, EventArgs e)
        {
            Usuario Obj_Actualiza = new Usuario();
            string Nome;
            string Senha;
            int Id_Usuario;
            Nome = txt_Nome_Novo_Usuario.Text;
            Senha = txt_Nova_Senha.Text;
            Id_Usuario = int.Parse(txt_Codigo_Usuario.Text);

            if (Obj_Actualiza.Acutalizar_Usuario(Nome, Senha, Id_Usuario) == 1)
            {
                Response.Write("Dados Actualizado");
            }
            else
            {
                Response.Write("Dados Não Actualizados");
            }  
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=EDMILSON\SQLEXPRESS;Initial Catalog=BD_Principal;Integrated Security=True";
            SqlConnection conexão = new SqlConnection(con);
            conexão.Open();
            SqlCommand cmd = new SqlCommand("Seleciona_Usuario", conexão);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            conexão.Close();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='silver'");

            //    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=''");
            //}
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int Codigo;
            Codigo = int.Parse(txt_Pesquisar_Usuario.Text);
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection conexão = new SqlConnection(con);
            conexão.Open();
            SqlCommand cmd = new SqlCommand("Pesquiza_Usuario", conexão);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id_Usuario", Codigo);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            conexão.Close();
        }
    }
}