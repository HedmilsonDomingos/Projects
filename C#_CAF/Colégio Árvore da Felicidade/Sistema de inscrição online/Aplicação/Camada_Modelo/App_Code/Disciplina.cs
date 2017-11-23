using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Camada_Modelo.App_Code
{
    class Disciplina
    {
        private string designacao;
        private int cargaHoraria, codigoDisciplina;



        public string Designacao
        {

            set { designacao = value; }
            get { return designacao; }
        }


        public int CargaHoraria
        {

            set { cargaHoraria = value; }
            get { return cargaHoraria; }
        }

        public int CodigoDisciplina
        {

            set { codigoDisciplina = value; }
            get { return codigoDisciplina; }
        }          
         
           
    }
}
