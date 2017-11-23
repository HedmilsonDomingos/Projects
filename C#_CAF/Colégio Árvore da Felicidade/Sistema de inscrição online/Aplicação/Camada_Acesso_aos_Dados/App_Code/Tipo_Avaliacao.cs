using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Camada_Modelo.App_Code
{
    class Tipo_Avaliacao
    {
        private int codigoTipo;
        private string designacao;
        private int percentagem;


        public int CodigoTipo_Avaliacao
        {

            set { codigoTipo = value; }
            get { return codigoTipo; }
        }


        public string Designacao
        {

            set { designacao = value; }
            get { return designacao; }
        }

        public int Percentagem
        {

            set { percentagem = value; }
            get { return percentagem; }
        }
    }
}
