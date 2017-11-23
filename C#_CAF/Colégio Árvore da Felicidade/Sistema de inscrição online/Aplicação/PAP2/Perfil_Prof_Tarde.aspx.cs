using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
using System.Web.UI.WebControls;
using Camada_Modelo;

namespace PAP2
{
    public partial class Perfil_Prof : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void Button2_Click(object sender, EventArgs e)
        {
            Pauta Obj_Pauta_Tarde = new Pauta();
            string _Nome_Aluno, _Tipo, _Descrição, _Disciplina, _Curso, _Classe;
            int _Nota;

            _Nome_Aluno = txt_Nome_Pauta.Text;
            _Tipo = dpl_Tipo__Nota.Text;
            _Descrição = Dpl_Designacao_Nota.Text;
            _Disciplina = txt_Disciplina_Nota.Text;
            _Curso = DplCurso_Nota.Text;
            _Classe = DplClasse_Nota.Text;
            _Nota = int.Parse(txt_Nota_Pauta.Text);
            
           
        }
        
         //********Apartir deste codigo abaixo as Notas serao removidas***************
        protected void btn_Apaga_Nota_Click(object sender, EventArgs e)
        {

            Pauta ogj_Apagar_Nota = new Pauta();

            string _Curso, _Classe;
            int _Senha;

            _Curso = dpl__Classe_Apaga_Nota.Text;
            _Classe = dpl_Curso_Apaga_Nota.Text;
            _Senha = int.Parse(txt_Codigo_Apaga_Nota.Text);

            if (dpl__Classe_Apaga_Nota.Text == "10ª" && dpl_Curso_Apaga_Nota.Text == "Informática")
            {
                //ogj_Apagar_Nota.Apaga_Pauta_Decima_Informatica(_Curso, _Classe, _Senha);
                //Response.Write("Nota Removida Com Sucesso");
            }
            else
            {
                Response.Write("A Nota Não Foi Removida");
            }


         //   Pauta Obj_Apaga_Nota = new Pauta();

         //   int Senha_do_Aluno; 
         //   string Curso_Apaga, Classe_Apaga;
         //   Senha_do_Aluno = int.Parse(txt_Codigo_Apaga_Nota.Text);
         //   Curso_Apaga = dpl_Curso_Apaga_Nota.Text;
         //   Classe_Apaga = dpl__Classe_Apaga_Nota.Text;

         ////--------------------------

         //   if (dpl__Classe_Apaga_Nota.Text == "10ª" && dpl_Curso_Apaga_Nota.Text=="Ciências Físicas Biológicas")
         //       {
         //       Obj_Apaga_Nota.Apaga_Pauta_Decima_Puniv(Senha_do_Aluno, Curso_Apaga, Classe_Apaga);
         //       Response.Write(" Nota Removida Com Sucesso ");
         //       }
         //       else
         //       {
         //           Response.Write("A Nota Não Foi Removida");
         //       }           
         //   //--------------

         //   if (dpl__Classe_Apaga_Nota.Text == "11ª" && dpl_Curso_Apaga_Nota.Text =="Ciências Físicas Biológicas")
         //        {
         //       Obj_Apaga_Nota.Apaga_Pauta_Decima_Primera_Puniv(Senha_do_Aluno, Curso_Apaga, Classe_Apaga);
         //       Response.Write("Nota Removida Com Sucesso ");
         //       }
         //       else
         //       {
         //           Response.Write("A Nota Não Foi Removida ");
         //       }            
         //   //--------------------------

         //   if (dpl__Classe_Apaga_Nota.Text == "12ª" && dpl_Curso_Apaga_Nota.Text =="Ciências Físicas Biológicas")
         //        {
         //       Obj_Apaga_Nota.Apaga_Pauta_Decima_Segunda_Puniv(Senha_do_Aluno, Curso_Apaga, Classe_Apaga);
         //      Response.Write(" Nota Removida Com Sucesso");
         //       }
         //       else
         //       {
         //           Response.Write("A Nota Não Foi Removida");
         //       }           
         //   //--------------------------

         //   if (dpl__Classe_Apaga_Nota.Text == "10ª" && dpl_Curso_Apaga_Nota.Text == "Informática")
         //   {
         //       Obj_Apaga_Nota.Apaga_Pauta_Decima_Informatica(Senha_do_Aluno, Curso_Apaga, Classe_Apaga);
         //       Response.Write("Nota Removida Com Sucesso ");
         //   }
         //       else
         //       {
         //           Response.Write("A Nota Não Foi Removida");
         //       }           
         //   //--------------------------

         //   if (dpl__Classe_Apaga_Nota.Text == "11ª" && dpl_Curso_Apaga_Nota.Text == "Informática")
         //       {
         //       Obj_Apaga_Nota.Apaga_Pauta_Decima_Primera_Informatica(Senha_do_Aluno, Curso_Apaga, Classe_Apaga);
         //        Response.Write("Nota Removida Com Sucesso");
         //       }
         //       else
         //       {
         //           Response.Write("A Nota Não Foi Removida");
         //       }
           
         //   //--------------------------

         //   if (dpl__Classe_Apaga_Nota.Text == "12ª" && dpl_Curso_Apaga_Nota.Text == "Informática")
         //   {
         //      Obj_Apaga_Nota.Apaga_Pauta_Decima_Segunda_Informatica(Senha_do_Aluno, Curso_Apaga, Classe_Apaga);
         //      Response.Write("Nota Removida Com Sucesso");
         //       }
         //       else
         //       {
         //           Response.Write("A Nota Não Foi Removida");
         //       }
         //     //--------------------------

         //   if (dpl__Classe_Apaga_Nota.Text == "10ª" && dpl_Curso_Apaga_Nota.Text == "Electrónica e Telecom")
         //      {
         //      Obj_Apaga_Nota.Apaga_Pauta_Decima_Electronica(Senha_do_Aluno, Curso_Apaga, Classe_Apaga);
         //      Response.Write(" Nota Removida Com Sucesso");
         //       }
         //      else
         //       {
         //           Response.Write("A Nota Não Foi Removida");
         //       }
         //     //--------------------------

         //   if (dpl__Classe_Apaga_Nota.Text == "11ª" && dpl_Curso_Apaga_Nota.Text == "Electrónica e Telecom")
         //       {
         //       Obj_Apaga_Nota.Apaga_Pauta_Decima_Primera_Electronica(Senha_do_Aluno, Curso_Apaga, Classe_Apaga);
         //       Response.Write("Nota Removida Com Sucesso");
         //       }
         //       else
         //       {
         //           Response.Write("A Nota Não Foi Removida");
         //       }
         //      //--------------------------

         //   if (dpl__Classe_Apaga_Nota.Text == "12ª" && dpl_Curso_Apaga_Nota.Text == "Electrónica e Telecom")
         //       {
         //       Obj_Apaga_Nota.Apaga_Pauta_Decima_Segunda_Electronica(Senha_do_Aluno, Curso_Apaga, Classe_Apaga);
         //          Response.Write("Nota Removida Com Sucesso ");
         //       }
         //      else
         //       {
         //           Response.Write("A Nota Não Foi Removida ");
         //       }
            }

        protected void btn_limpar_Click(object sender, EventArgs e)
        {
            dpl_Classe_Visualiza_Pauta_ensino_médio.Text = "";
            dpl_Curso_Visualiza_Pauta_ensino_médio.Text = "";
        }

        protected void btn_limpar_Nota_Click(object sender, EventArgs e)
        {
            txt_Nome_Pauta.Text="";
            dpl_Tipo__Nota.Text="";
            Dpl_Designacao_Nota.Text="";
            txt_Disciplina_Nota.Text="";
            DplCurso_Nota.Text="";
            DplClasse_Nota.Text="";
            txt_Nota_Pauta.Text="";
        }

        protected void btn_visualiza_pauta_ensino_medio_Click(object sender, EventArgs e)
        {
            string Localiza_BD = @"Data Source=HP\SQLEXPRESS;Initial Catalog=BD_Principal;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(Localiza_BD);
            Conexao.Open();



            if (dpl_Classe_Visualiza_Pauta_ensino_médio.Text == "10ª" && dpl_Curso_Visualiza_Pauta_ensino_médio.Text=="Informática")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Decima_Infor", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Decima_Infor", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridView1.DataSource = Dados;
                GridView1.DataBind();
            }

            if (dpl_Classe_Visualiza_Pauta_ensino_médio.Text == "11ª" && dpl_Curso_Visualiza_Pauta_ensino_médio.Text == "Informática")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Decima_Primera_Infor", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Decima_Primera_Infor", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridView1.DataSource = Dados;
                GridView1.DataBind();
            }
            if (dpl_Classe_Visualiza_Pauta_ensino_médio.Text == "12ª" && dpl_Curso_Visualiza_Pauta_ensino_médio.Text == "Informática")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Decima_Segunda_Infor", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Decima_Segunda_Infor", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridView1.DataSource = Dados;
                GridView1.DataBind();
            }

            if (dpl_Classe_Visualiza_Pauta_ensino_médio.Text == "10ª" && dpl_Curso_Visualiza_Pauta_ensino_médio.Text == "Ciência Fisica e Biológica")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Decima_Puniv", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Decima_Puniv", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridView1.DataSource = Dados;
                GridView1.DataBind();
            }

            if (dpl_Classe_Visualiza_Pauta_ensino_médio.Text == "11ª" && dpl_Curso_Visualiza_Pauta_ensino_médio.Text == "Ciência Fisica e Biológica")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Decima_Primera_Puniv", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Decima_Primera_Puniv", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridView1.DataSource = Dados;
                GridView1.DataBind();
            }
            if (dpl_Classe_Visualiza_Pauta_ensino_médio.Text == "12ª" && dpl_Curso_Visualiza_Pauta_ensino_médio.Text == "Ciência Fisica e Biológica")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Decima_Segunda_Puniv", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Decima_Segunda_Puniv", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridView1.DataSource = Dados;
                GridView1.DataBind();
            }
        }
       }
                     
    }
