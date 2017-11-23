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
using System.Configuration;

namespace PAP2
{
    public partial class Area_Pedagogica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Pesquisa_Inscricao_Click(object sender, EventArgs e)
        {
            int Codigo;
            Codigo = int.Parse(txt_Pesquisa_Inscricao_D_P.Text);
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Pesquizar_Inscrições_Codigo", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Codigo", Codigo);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void btn_Ver_Todas_Inscricoes_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Selecionar_Aluno", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void btn_Pesquizar_Turma_Por_Id_Click(object sender, EventArgs e)
        {
            int Codigo_Turma;
            Codigo_Turma = int.Parse(txt_Pesquisar_Turma_D_P.Text);
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Pesquizar_Turma", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Codigo", Codigo_Turma);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Seleciona_Turma", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Pesquisar_Sala_Por_Id_Click(object sender, EventArgs e)
        {
            int Codigo_Sala;
            Codigo_Sala = int.Parse(txt_Pesquisar_Sala_D_P.Text);
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Pesquizar_Sala", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Codigo", Codigo_Sala);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Selecioda_Sala", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void btn_Pesquisar_Periodo_Click(object sender, EventArgs e)
        {
            int Codigo_Periodo;
            Codigo_Periodo = int.Parse(txt_Código_do_Periodo_D_P.Text);
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Pesquizar_Periodo", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Codigo", Codigo_Periodo);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Seleciona_Periodo", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void btn_Pesquisar_Curso_Click(object sender, EventArgs e)
        {
            int Codigo;
            Codigo = int.Parse(txt_Codigo_do_Curso_D_P.Text);
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Pesquizar_Curso", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Codigo", Codigo);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Selecionar_Cursos", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Btn_Pesquisa_Classe_Click(object sender, EventArgs e)
        {
            int Codigo_Classe;
            Codigo_Classe = int.Parse(txt_Pesquisa_Classe_D_P.Text);
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Pesquizar_Classe", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Codigo", Codigo_Classe);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void btn_Visualiza_Todas_Classe_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Selecionar_Classe", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void btn_Pesquisar_Matricula_Click(object sender, EventArgs e)
        {
            int Codigo_Matricula;
            Codigo_Matricula = int.Parse(txt_Codigo_da_Matricula_D_P.Text);
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Pesquizar_Matricula", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Codigo", Codigo_Matricula);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Selecionar_Matricula", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='Silver'");

                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='white'");
            }
        }

       }
}