using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Threading.Tasks;

    public class Informacoes_Estudante:IEquatable<Informacoes_Estudante>
    {
        private Dados_aluno informacao = null;
        private int _ID;

        public int ID
        {
            get { return _ID; }
            set { _ID = value; }
        }

        public Dados_aluno Dados
        {
            get
            {
                if (informacao == null)
                {
                    informacao = new Dados_aluno(ID);
                }
                return informacao;
            }
        }

        public string NomeAluno
        {
            get { return Dados.NomeCompletoAluno; }
        }

        public string ClasseAluno
        {
            get { return Dados.ClasseAluno; }
        }

        public string CursoAluno
        {
            get { return Dados.CursoAluno; }
        }

        public int IdadeAluno
        {
            get { return Dados.IdadeAluno; }
        }

        public Informacoes_Estudante(int IDAluno)
        {
            this.ID = IDAluno;
        }

        public bool Equals(Informacoes_Estudante Dado)
        {
            return Dado.ID == this.ID;
        }
    }

