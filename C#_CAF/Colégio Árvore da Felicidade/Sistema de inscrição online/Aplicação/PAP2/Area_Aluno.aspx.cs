using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Camada_Modelo;
using System.Configuration;

namespace PAP2
{
    public partial class Exemplo7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='Silver'");

            //    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='white'");
            //}
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(con);
            Conexao.Open();
            SqlCommand cmd = new SqlCommand("Pesquizar_Classe", Conexao);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@Codigo", id);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
          
        }

        protected void btn_Pesquizar_Turma_Por_Id_Click(object sender, EventArgs e)
        {
           
            int Codigo_Turma;
            Codigo_Turma = int.Parse(txt_Pesquisar_Turma.Text);
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

        protected void Pesquisar_Sala_Por_Id_Click(object sender, EventArgs e)
        {
           
            int Codigo_Sala;
            Codigo_Sala = int.Parse(txt_Pesquisar_Sala.Text);
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

        protected void btn_Pesquisa_Incricoes_Click(object sender, EventArgs e)
        {

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

        protected void btn_Pesquisa_Inscricao_Click(object sender, EventArgs e)
        {
            int Codigo;
            Codigo=int.Parse(txt_Pesquisa_Inscricao.Text);
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

        protected void btn_Pesquisar_Curso_Click(object sender, EventArgs e)
        {
            int Codigo;
            Codigo = int.Parse(txt_Codigo_do_Curso.Text);
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

        protected void Btn_Cadastra___Curso_Click(object sender, EventArgs e)
        {
            ClsEstudante Adiciona_Turma = new ClsEstudante();

            string Nome_Turma;
            Nome_Turma = txt_Cadastro_de_Turma.Text;

            if (Adiciona_Turma.Inserir_Turma(Nome_Turma) == 1)
            {

                Response.Write("Turma Cadastrada");
            }
            else
            {
                Response.Write("Turma Não Cadastrada ");
            }
        }

        protected void btn_Cadastra____Sala_Click(object sender, EventArgs e)
        {
            ClsEstudante Adiciona_Sala = new ClsEstudante();
            int Numero_Sala;
            Numero_Sala = int.Parse(txt_Cadastrar_Sala.Text);

            if (Adiciona_Sala.Inserir_Sala(Numero_Sala) == 1)
            {
                Response.Write("Sala Cadastrada");
            }

            else
            {
                Response.Write("Sala Não Cadastrada");
            }
        }

        protected void btn_Cadastra____Periodo_Click(object sender, EventArgs e)
        {
            ClsEstudante Adiciona_Periodo = new ClsEstudante();
            string Periodo;
            Periodo = txt_Cadastrar_Periodo.Text;
            if (Adiciona_Periodo.Inserir_Periodo(Periodo) == 1)
            {
                Response.Write("Periodo Cadastrado");
            }
            else
            {
                Response.Write("Periodo Não Cadastrada");
            }
        }

        protected void btn_Cadastra____Curso_Click(object sender, EventArgs e)
        {
            ClsEstudante Adiciona_Curso = new ClsEstudante();
            string Curso;
            Curso = txt_Cadastrar_Curso.Text;

            if (Adiciona_Curso.Inserir_Curso(Curso) == 1)
            {
                Response.Write("Curso Cadastrado");
            }
            else
            {
                Response.Write("Curso Não Cadastrado");
            }
        }

          

        protected void Btn_Pesquisa_Classe_Click(object sender, EventArgs e)
        {
            int Codigo_Classe;
            Codigo_Classe = int.Parse(txt_Pesquisa_Classe.Text);
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
            Codigo_Periodo = int.Parse(txt_Código_do_Periodo.Text);
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
           
       


        protected void btn_Apagar_Sala_Click(object sender, EventArgs e)
        {
            ClsEstudante obj_E_Sala = new ClsEstudante();

            int id;
            id = int.Parse(txt_Codigo_Sala_Ap.Text);

            if(obj_E_Sala.Eliminar_Sala(id)==1)
            {
                Response.Write("Sala removida");
            }
            else 
            {
                Response.Write("Sala não removida");
            }
        }

   

        protected void btn_Cadastrar_Aluno_na_Turma_Click1(object sender, EventArgs e)
        {
            ClsEstudante obj_C_A_T = new ClsEstudante();

            int Id, Id_Classe, Id_Periodo, Id_Sala, Id_Curso;

            Id = int.Parse(txt_ID_Turma.Text);
            Id_Classe = int.Parse(txt_Codigo_Actualiza_Classe_T.Text);
            Id_Periodo = int.Parse(txt_Codigo_Actualiza_Periodo_T.Text);
            Id_Sala = int.Parse(txt_Codigo_Actualiza_Sala_T.Text);
            Id_Curso = int.Parse(txt_Codigo_Actualiza_Curso_T.Text);

            if (obj_C_A_T.Actualizar_Turma(Id, Id_Classe, Id_Periodo, Id_Sala, Id_Curso) == 1)
            {
                Response.Write("Dados Actualizados com sucesso");
            }
            else
            {
                Response.Write("Falha na Actualização dos dados");
            }
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            txt_Codigo_Actualiza_Classe_T.Text = "";
            txt_Codigo_Actualiza_Periodo_T.Text="";
            txt_Codigo_Actualiza_Sala_T.Text = "";
            txt_Codigo_Actualiza_Curso_T.Text = "";
            txt_ID_Turma.Text = "";
            
            
        }

        protected void btn_Apagar_Curso_Click(object sender, EventArgs e)
        {
            ClsEstudante obj_E_Curso = new ClsEstudante();

            int id;
            id = int.Parse(txt_Codigo_Curso_Ap.Text);

            if (obj_E_Curso.Eliminar_Curso(id) == 1)
            {
                Response.Write("Curso não removido");
            }
            else
            {
                Response.Write("Curso removido");
            }
        }

        protected void btn_Apagar_Turma_Click(object sender, EventArgs e)
        {
            ClsEstudante Obj_Ap_Turma = new ClsEstudante();

            int id;
            id = int.Parse(txt_Codigo_Turma_Ap.Text);

            if (Obj_Ap_Turma.Eliminar_Turma(id) == 1)
            {
                Response.Write("Turma removida");
            }
            else
            {
                Response.Write("Truma não removida");
            }
        }

        protected void btn_Apagar_Periodo_Click(object sender, EventArgs e)
        {
            ClsEstudante Obj_Ap_Periodo = new ClsEstudante();

            int id;
            id = int.Parse(txt_Codigo_Periodo_Ap.Text);

            if (Obj_Ap_Periodo.Eliminar_Periodo(id) == 1)
            {
                Response.Write("Periodo removido");
            }
            else
            {
                Response.Write("Periodo não removido");
            }
        }

        protected void btn_Apagar_Inscricao_Click(object sender, EventArgs e)
        {
            ClsEstudante Obj_Ap_Inscricao = new ClsEstudante();

            int id;
            id = int.Parse(txt_Codigo_Periodo_Ap.Text);

            if (Obj_Ap_Inscricao.Eliminar_Inscrição(id) == 1)
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

        protected void btn_Inserir_Disciplina_Click(object sender, EventArgs e)
        {
            //ClsEstudante Obj_Disciplina = new ClsEstudante();

            //string Designacao;

            //Designacao = txt_Disciplina.Text;

            //if (Obj_Disciplina.Inserir_Disciplina(Designacao) == 1)
            //{
            //    Response.Write("Disciplina Inserida");
            //}

            //else 
            //{

            //    Response.Write("Disciplina Não Inserida");
            //}
        }

        protected void btn_Pesquiza_Disciplina_Click(object sender, EventArgs e)
        {

            //int Codigo_Disciplina;
            //Codigo_Disciplina = int.Parse(txt_Pesquiza_Discipkina.Text);

            //string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
            //SqlConnection Conexao = new SqlConnection(con);
            //Conexao.Open();
            //SqlCommand cmd = new SqlCommand("Pesquizar_Disciplina", Conexao);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@Codigo", Codigo_Disciplina);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //GridView1.DataSource = ds;
            //GridView1.DataBind();
        }

        protected void btn_Seleciona_Disciplina_Click(object sender, EventArgs e)
        {
            {
                string con = @"Data Source=HP\SQLEXPRESS;Initial Catalog=Banco_de_Dados_Sistema_Inscrição_Online;Integrated Security=True";
                SqlConnection Conexao = new SqlConnection(con);
                Conexao.Open();
                SqlCommand cmd = new SqlCommand("Seleciona_Disciplina", Conexao);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }         
    }
}