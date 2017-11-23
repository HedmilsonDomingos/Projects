using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
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
       
        //protected void Btn_Inseri_Pauta_Click(object sender, EventArgs e)
        //{
            

        //}

        protected void Button2_Click(object sender, EventArgs e)
        {
            Pauta Obj_Pauta = new Pauta();

            string _NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota;

            _NomeAluno = txt_Nome_Pauta.Text;
            _Tipo = dpl_Tipo__Nota.Text;
            _Designação = Dpl_Designacao_Nota.Text;
            _Disciplina = dpl_Disciplina_Nota.Text;
            _Curso = DplCurso_Nota.Text;
            _Classe = DplClasse_Nota.Text;
            _Nota = dpl_Tipo__Nota.Text;



            if (DplClasse_Nota.Text == "Pré")
            {
                if (Obj_Pauta.Inserir_Pauta_Pre(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }

            if (DplClasse_Nota.Text == "1ª")
            {
                if (Obj_Pauta.Inserir_Pauta_Primera(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }

            if (DplClasse_Nota.Text == "2ª")
            {
                if (Obj_Pauta.Inserir_Pauta_Segunda(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }


            if (DplClasse_Nota.Text == "3ª")
            {
                if (Obj_Pauta.Inserir_Pauta_Tercera(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }

            if (DplClasse_Nota.Text == "4ª")
            {
                if (Obj_Pauta.Inserir_Pauta_Quarta(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }

            if (DplClasse_Nota.Text == "5ª")
            {
                if (Obj_Pauta.Inserir_Pauta_Quinta(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }

            if (DplClasse_Nota.Text == "6ª")
            {
                if (Obj_Pauta.Inserir_Pauta_Sexta(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }

            }

            if (DplClasse_Nota.Text == "7ª")
            {
                if (Obj_Pauta.Inserir_Pauta_Setima(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }

            if (DplClasse_Nota.Text == "8ª")
            {
                if (Obj_Pauta.Inserir_Pauta_Oitava(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }
                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }

            if (DplClasse_Nota.Text == "9ª")
            {
                if (Obj_Pauta.Inserir_Pauta_Nona(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }

            if (DplClasse_Nota.Text == "10ª" && DplCurso_Nota.Text == "Eletrónica e Telecom")
            {
                if (Obj_Pauta.Inserir_Pauta_Decima_Electronica(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }

            if (DplClasse_Nota.Text == "11ª" && DplCurso_Nota.Text == "Eletrónica e Telecom")
            {
                if (Obj_Pauta.Inserir_Pauta_Decima_Primera_Electronica(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }


            if (DplClasse_Nota.Text == "12ª" && DplCurso_Nota.Text == "Eletrónica e Telecom")
            {
                if (Obj_Pauta.Inserir_Pauta_Decima_Segunda_Electronica(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }

            if (DplClasse_Nota.Text == "10ª" && DplCurso_Nota.Text == "Informática")
            {
                if (Obj_Pauta.Inserir_Pauta_Decima_Informatica(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }

            if (DplClasse_Nota.Text == "11ª" && DplCurso_Nota.Text == "Informática")
            {
                if (Obj_Pauta.Inserir_Pauta_Decima_Primera_Informatica(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }

            if (DplClasse_Nota.Text == "12ª" && DplCurso_Nota.Text == "Informática")
            {
                if (Obj_Pauta.Inserir_Pauta_Decima_Segunda_Informatica(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }

            if (DplClasse_Nota.Text == "10ª" && DplCurso_Nota.Text == "Ciência Físicas Biológicas")
            {
                if (Obj_Pauta.Inserir_Pauta_Decima_Puniv(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }

            if (DplClasse_Nota.Text == "11ª" && DplCurso_Nota.Text == "Ciência Físicas Biológicas")
            {
                if (Obj_Pauta.Inserir_Pauta_Decima_Primera_Puniv(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }


            if (DplClasse_Nota.Text == "12ª" && DplCurso_Nota.Text == "Ciência Físicas Biológicas")
            {
                if (Obj_Pauta.Inserir_Pauta_Decima_Segunda_Puniv(_NomeAluno, _Tipo, _Designação, _Disciplina, _Curso, _Classe, _Nota) == 1)
                {
                    MessageBox.Show(" Dados Salvo Com Sucesso");
                }


                else
                {
                    MessageBox.Show(" Inserção de Dados Falhou");
                }
            }
        }

        

        
    }
}