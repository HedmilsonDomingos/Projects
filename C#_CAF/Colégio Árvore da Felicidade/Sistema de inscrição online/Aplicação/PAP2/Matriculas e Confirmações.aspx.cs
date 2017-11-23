using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Camada_Modelo;

namespace PAP2
{
    public partial class Matriculas_e_Confirmações : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Matricula____Estudante_Click(object sender, EventArgs e)
        {
            ClsEstudante Matricular_Estudante = new ClsEstudante();
            int Dia_Matric;
            string Mes_Matric;
            int Ano_Matric;
            int Codigo_Estudante;
            int Codigo_Turma;

            Dia_Matric = int.Parse(dpl_Dia_Matricula.Text);
            Mes_Matric = dpl_Mes_Matricula.Text;
            Ano_Matric = int.Parse(txt_Ano_Matricula.Text);
            Codigo_Estudante = int.Parse(txt_Codigo_Matric_Aluno.Text);
            Codigo_Turma = int.Parse(txt_Codigo_Matric_Turma.Text);

            if (Matricular_Estudante.Matricula_Estudante(Dia_Matric, Mes_Matric, Ano_Matric, Codigo_Estudante, Codigo_Turma) == 1)
            {
                Response.Write("Matricula Efectuada Com Êxito");
            }
            else
            {
                Response.Write("Matricula Não Efectuada");
            }
        }

        protected void btn_Limpar_Matricula_Click(object sender, EventArgs e)
        {

        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            ClsEstudante Obj_A_MAtricula = new ClsEstudante();

            int id, Id_Turma;
            id = int.Parse(txt_Codigo_Matric.Text);
            Id_Turma = int.Parse(txt_Novo_Codigo_Turma.Text);

            if (Obj_A_MAtricula.Actualizar_Matricula(id, Id_Turma) == 1)
            {
                Response.Write("Turma Actualizada");
            }
            else
            {
                Response.Write("A Turma não foi Actualizada");
            }
        }

        protected void btn_Pesquisar_Matricula_Click(object sender, EventArgs e)
        {
            int Codigo_Matricula;
            Codigo_Matricula = int.Parse(txt_Codigo_da_Matricula.Text);
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

        protected void Button16_Click(object sender, EventArgs e)
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

        protected void btn_Eliminar_Matricula_Click(object sender, EventArgs e)
        {
            ClsEstudante Obj_Ap_Matricula = new ClsEstudante();

            int id;
            id = int.Parse(txt_Eliminar_Matricula.Text);

            if (Obj_Ap_Matricula.Eliminar_Matricula(id) == 1)
            {
                Response.Write("Matrícula removida");
            }
            else
            {
                Response.Write("Matrícula não removida");
            }
        }

        protected void btn_Eliminar_Confirmação_Click(object sender, EventArgs e)
        {
            ClsEstudante Obj_Ap_Confirmacao = new ClsEstudante();

            int id;
            id = int.Parse(txt_Codigo_Confirmacao_Ap.Text);

            if (Obj_Ap_Confirmacao.Eliminar_Confirmacao(id) == 1)
            {
                Response.Write("Periodo removido");
            }
            else
            {
                Response.Write("Periodo não removido");
            }
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            ClsEstudante Confirmar_Estudante = new ClsEstudante();
            int Dia_Conf;
            string Mes_Conf;
            int Ano_Conf;
            int Codigo_Matricula_Aluno;

            Dia_Conf = int.Parse(dpl_Dia_Confir.Text);
            Mes_Conf = dpl_Mes_Confir.Text;
            Ano_Conf = int.Parse(txt_Ano_Confir.Text);
            Codigo_Matricula_Aluno = int.Parse(txt_Codigo_da_Matricula_do_Aluno.Text);

            if (Confirmar_Estudante.Confirmacao_Estudante(Dia_Conf, Mes_Conf, Ano_Conf, Codigo_Matricula_Aluno) == 1)
            {
                Response.Write("Confirmação Efectuada Com Êxito");
            }
            else
            {
                Response.Write("Confirmação Não Efectuada");
            }
        }

        protected void btn_Pesquisar_Confirmação_Click(object sender, EventArgs e)
        {
            int Codigo_Confirmacao;
            Codigo_Confirmacao = int.Parse(txt_Codigo_da_Confirmacao.Text);

            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Pesquizar_Confirmacao", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Codigo", Codigo_Confirmacao);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Selecionar_Confirmacao", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }



      
    }
}