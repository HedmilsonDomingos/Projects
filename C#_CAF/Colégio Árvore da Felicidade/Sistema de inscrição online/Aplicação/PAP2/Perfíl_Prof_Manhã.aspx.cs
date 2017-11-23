using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using Camada_Modelo;
using System.Windows.Forms;

namespace PAP2
{
    public partial class Perfíl_Prof_Manhã : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Nota_Manha_Click(object sender, EventArgs e)
        {
            Pauta Obj_Pauta_Manha = new Pauta();

            string Nome_Aluno, Tipo, Descrição, Disciplina, Classe; 
            int  Nota;
             
            Nome_Aluno = txt_Nome_Pauta_Manha.Text;
            Tipo = dpl_Tipo__Nota_Manha.Text;
            Descrição = Dpl_Designacao_Nota_Manha.Text;
            Disciplina = txt_Disciplina_Nota_Manha.Text;
            Classe = DplClasse_Nota_Manha.Text;
            Nota = int.Parse(txt_Nota_Pauta_Manha.Text);

       }
//******/////////////////////
        protected void btn_Apaga_Nota_Amanha_Click(object sender, EventArgs e)
        {
            Pauta Obj_Apaga = new Pauta();
            int Codigo_Aluno;
            string Classe;
            
            Codigo_Aluno = int.Parse(txt_Codigo_Apaga_Nota_Aluno_Manha.Text);
            Classe =dpl_Classe__Nota_Manha_Apaga.Text;

             if (dpl_Classe__Nota_Manha_Apaga.Text == "Pre")
            {
                Obj_Apaga.Apaga_Pauta_Pre(Codigo_Aluno,Classe);
                MessageBox.Show(" Nota Foi Removida Com Sucesso");
            }
            else
            {
                MessageBox.Show("Erro ao Removida Nota");
            }

            if (dpl_Classe__Nota_Manha_Apaga.Text == "1ª")
            {               
               Obj_Apaga.Apaga_Pauta_Primera(Codigo_Aluno, Classe);
               MessageBox.Show(" Nota Foi Removida Com Sucesso");
            }
            else
            {
                MessageBox.Show("Erro ao Removida Nota");
            }        

            if (dpl_Classe__Nota_Manha_Apaga.Text == "2ª")
            {
                Obj_Apaga.Apaga_Pauta_Segunda(Codigo_Aluno, Classe);
                MessageBox.Show(" Nota Foi Removida Com Sucesso");
            }
            else
            {
                MessageBox.Show("Erro ao Removida Nota");
            }

            
            if (dpl_Classe__Nota_Manha_Apaga.Text == "3ª")
            {
                Obj_Apaga.Apaga_Pauta_Tercera(Codigo_Aluno, Classe);
                MessageBox.Show(" Nota Foi Removida Com Sucesso");
            }
            else
            {
                MessageBox.Show("Erro ao Removida Nota");
            }

            if (dpl_Classe__Nota_Manha_Apaga.Text == "4ª")
            {
                Obj_Apaga.Apaga_Pauta_Quarta(Codigo_Aluno, Classe);
                MessageBox.Show(" Nota Foi Removida Com Sucesso");
            }
            else
            {
                MessageBox.Show("Erro ao Removida Nota");
            }

            if (dpl_Classe__Nota_Manha_Apaga.Text == "5ª")
            {
                Obj_Apaga.Apaga_Pauta_Quinta(Codigo_Aluno, Classe);
                MessageBox.Show(" Nota Foi Removida Com Sucesso");
            }
            else
            {
                MessageBox.Show("Erro ao Removida Nota");
            }


            if (dpl_Classe__Nota_Manha_Apaga.Text == "6ª")
            {
             Obj_Apaga.Apaga_Pauta_Sexta(Codigo_Aluno, Classe);
                MessageBox.Show(" Nota Foi Removida Com Sucesso");
            }
            else
            {
                MessageBox.Show("Erro ao Removida Nota");
            }

            if (dpl_Classe__Nota_Manha_Apaga.Text == "7ª")
            {
                Obj_Apaga.Apaga_Pauta_Sexta(Codigo_Aluno, Classe);
                MessageBox.Show(" Nota Foi Removida Com Sucesso");
            }
            else
            {
                MessageBox.Show("Erro ao Removida Nota");
            }

            if (dpl_Classe__Nota_Manha_Apaga.Text == "8ª")
            {
                Obj_Apaga.Apaga_Pauta_Sexta(Codigo_Aluno, Classe);
                MessageBox.Show(" Nota Foi Removida Com Sucesso");
            }
            else
            {
                MessageBox.Show("Erro ao Removida Nota");
            }

            if (dpl_Classe__Nota_Manha_Apaga.Text == "9ª")
            {
                Obj_Apaga.Apaga_Pauta_Sexta(Codigo_Aluno, Classe);
                MessageBox.Show(" Nota Foi Removida Com Sucesso");
            }
            else
            {
                MessageBox.Show("Erro ao Removida Nota");
            }           
         }

        protected void Btn_Visuliza_Pauta_Manha_Click(object sender, EventArgs e)
        {
            string Localizacao_BD = @"Data Source=HP\SQLEXPRESS;Initial Catalog=BD_Principal;Integrated Security=True";
            SqlConnection Conexao = new SqlConnection(Localizacao_BD);
            Conexao.Open();
            
            if( dpl_Classe__Nota_Manha_Visiuliza.Text=="Pre")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Pre", Conexao);
            Comando.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Pre", Conexao);
            DataSet Dados = new DataSet();
            Adaptador.Fill(Dados);
            GridView1.DataSource = Dados;
            GridView1.DataBind();
            }

            if (dpl_Classe__Nota_Manha_Visiuliza.Text == "1ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Primera", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Primera", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridView1.DataSource = Dados;
                GridView1.DataBind();
            }

            if (dpl_Classe__Nota_Manha_Visiuliza.Text == "2ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Segunda", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Segunda", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridView1.DataSource = Dados;
                GridView1.DataBind();
            }

            if (dpl_Classe__Nota_Manha_Visiuliza.Text == "3ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Tercera", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Tercera", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridView1.DataSource = Dados;
                GridView1.DataBind();
            }

            if (dpl_Classe__Nota_Manha_Visiuliza.Text == "4ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Quarta", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Quarta", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridView1.DataSource = Dados;
                GridView1.DataBind();
            }

            if (dpl_Classe__Nota_Manha_Visiuliza.Text == "5ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Quinta", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Quinta", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridView1.DataSource = Dados;
                GridView1.DataBind();
            }

            if (dpl_Classe__Nota_Manha_Visiuliza.Text == "6ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Sexta", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Sexta", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridView1.DataSource = Dados;
                GridView1.DataBind();
            }
            if (dpl_Classe__Nota_Manha_Visiuliza.Text == "7ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Setima", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Setima", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridView1.DataSource = Dados;
                GridView1.DataBind();
            }
            if (dpl_Classe__Nota_Manha_Visiuliza.Text == "8ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Oitava", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Oitava", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridView1.DataSource = Dados;
                GridView1.DataBind();
            }

            if (dpl_Classe__Nota_Manha_Visiuliza.Text == "9ª")
            {
                SqlCommand Comando = new SqlCommand("Apresente_Pauta_Nona", Conexao);
                Comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adaptador = new SqlDataAdapter("Apresente_Pauta_Nona", Conexao);
                DataSet Dados = new DataSet();
                Adaptador.Fill(Dados);
                GridView1.DataSource = Dados;
                GridView1.DataBind();
            }                 
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
              txt_Nome_Pauta_Manha.Text="";
              dpl_Tipo__Nota_Manha.Text="";
              Dpl_Designacao_Nota_Manha.Text="";;
              txt_Disciplina_Nota_Manha.Text="";;
              DplClasse_Nota_Manha.Text="";;
              txt_Nota_Pauta_Manha.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          txt_Codigo_Apaga_Nota_Aluno_Manha.Text="";
           dpl_Classe__Nota_Manha_Apaga.Text="";
        }

        }
    }
