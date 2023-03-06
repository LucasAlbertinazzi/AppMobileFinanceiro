using System;
using System.Collections.Generic;
using System.Text;
using static Main.Models.ConsultaVendas;

namespace Main.Models
{
    public class TotalPedidos
    {
        public decimal totalProduto { get; set; }
        public decimal totalDesconto { get; set; }
        public decimal totalAcrescimo { get; set; }
        public decimal totalPagar { get; set; }
        public decimal acrescimoMedio { get; set; }
        public int contadorCodigo { get; set; }
        public int codLoja { get; set; }
        public Intervalo intervalo { get; set; }
    }
}
