using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Camada_Modelo.App_Code
{
    class Trimestre
    {
        private string designacao;
        private int codigoTrimestre;



        public string Designacao
        {

            set { designacao = value; }
            get { return designacao; }
        }


        public int CodigoTrimestre
        {
            set { codigoTrimestre = value; }
            get { return codigoTrimestre; }
        }
       
    }
}
