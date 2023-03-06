using System;
using System.Collections.Generic;
using static Main.Models.ConsultaVendas;
using System.Text;

namespace Main.Models
{
    public class TotalPedidoCancelado
    {
        public int total { get; set; }
        public int codLoja { get; set; }
        public Intervalo intervalo { get; set; }
    }
}
