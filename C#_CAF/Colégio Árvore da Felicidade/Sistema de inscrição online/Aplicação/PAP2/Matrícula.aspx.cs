using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using Camada_Modelo;

namespace PAP2
{
    public partial class Matrícula : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            ClsEstudante ObjAluno = new ClsEstudante();

            string Nome,Nome_Completo, Nome_Pai, Nome_Mae, Mes_Nasc,  Provincia, Municipio, Morada,  Email, NBI, Mes_Emissao,  Curso, Classe, Genero, Estado_Civil;
            int Dia_Nasc, Ano_Nasc, Telefone, Dia_Emissao, Ano_Emissao, Idade;
            Nome = txt_Nome.Text;
            Nome_Completo = txt_Nome_Completo.Text;
            Nome_Pai = txt_Nome_Pai.Text;
            Nome_Mae = txt_Nome_Mae.Text;
            Dia_Nasc =int.Parse(dpl_Dia_Nasc.Text);
            Mes_Nasc = dpl_Mes_Nasc.Text;
            Ano_Nasc =int.Parse( dpl_Ano_Nasc.Text);
            Provincia = Txt_Provincia.Text;
            Municipio = txt_Municipio.Text;
            Morada = txt_Morada.Text;
            Telefone = int.Parse( txt_Telefone.Text);
            Email = txt_Email.Text;
            NBI = txt_NBI.Text;
            Dia_Emissao =int.Parse( dpl_Dia_Emissao.Text);
            Mes_Emissao = dpl_Mes_Emissao.Text;
            Ano_Emissao = int.Parse( txt_Ano_Emissao.Text);
            Idade = int.Parse( txt_Idade.Text);
            Curso = DplCurso.Text;
            Classe = DplClasse.Text;
            Genero = dpl_Genero.Text;
            Estado_Civil = Dpl_Estado_Civil.Text;         
         
                if (ObjAluno.inserirAluno(Nome,Nome_Completo, Nome_Pai, Nome_Mae, Dia_Nasc, Mes_Nasc, Ano_Nasc, Provincia, Municipio, Morada, Telefone, Email, NBI, Dia_Emissao, Mes_Emissao, Ano_Emissao, Idade, Curso, Classe, Genero, Estado_Civil) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }
                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }                                  
        protected void btn_Limpar_Click(object sender, EventArgs e)
        {
            txt_Nome.Text = "";
            txt_Nome_Completo.Text = "";
            txt_Nome_Pai.Text = "";
            txt_Nome_Mae.Text = "";
            dpl_Dia_Nasc.Text = "";
            dpl_Mes_Nasc.Text = "";
            dpl_Ano_Nasc.Text = "";
            Txt_Provincia.Text = "";
            txt_Municipio.Text = "";
            txt_Morada.Text = "";
            txt_NBI.Text = "";
            dpl_Dia_Emissao.Text = "";
            dpl_Mes_Emissao.Text = "";
            txt_Ano_Emissao.Text = "";
            txt_Email.Text = "";
            txt_Telefone.Text = "";
            txt_Idade.Text = "";
            DplCurso.Text = "";
            DplClasse.Text = "";
            Dpl_Estado_Civil.Text = "";
            txt_Ano_Emissao.Text = "";
           
        }
   
    }
}