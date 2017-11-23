using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Globalization;
using System.Configuration;
using System.Threading.Tasks;


    public class Sessao_Estudante
    {
        public List<Informacoes_Estudante> Dados { get; set; }
        public static Sessao_Estudante Instancia;

        static Sessao_Estudante()
        {
            if (HttpContext.Current.Session["DadosAluno"] == null)
            {
                Instancia = new Sessao_Estudante();
                Instancia.Dados = new List<Informacoes_Estudante>();
                HttpContext.Current.Session["DadosAluno"] = Instancia;
            }
            else
            { 
                Instancia=(Sessao_Estudante)HttpContext.Current.Session["DadosAluno"];
            }
            
        }

        public void LoginAluno(int ID)
        {
            Informacoes_Estudante Aluno = new Informacoes_Estudante(ID);

            if (Dados.Contains(Aluno))
            {
                foreach (Informacoes_Estudante aluno in Dados)
                {
                    if (aluno.Equals(Aluno))
                    {
                        return;
                    }
                }
            }
            else
            { 
            
            }
        }

    }

