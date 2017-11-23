using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Camada_Modelo.App_Code
{
    class Genero
    {
        private int codigoGenero;
        private string designacao;


        public string Designacao
        {
            get { return designacao; }
            set { designacao = value; }
        }

        public int CodigoGenero
        {
            get { return codigoGenero; }
            set { codigoGenero = value; }
        }
            
    }
}
