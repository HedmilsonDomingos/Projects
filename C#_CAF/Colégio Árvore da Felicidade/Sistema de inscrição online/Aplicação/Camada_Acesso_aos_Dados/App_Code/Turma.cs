using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Camada_Modelo.App_Code
{
    class Turma
    {
        private string designacao;
        private int numeroAluno;



        public string Designacao
        {

            set { designacao = value; }
            get { return designacao; }
        }


        public int NumeroAluno
        {

            set { numeroAluno = value; }
            get { return numeroAluno; }
        }


    }
}
