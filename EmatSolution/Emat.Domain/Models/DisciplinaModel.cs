using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Emat.Domain.Models
{
    public class DisciplinaModel
    {
        public int ID { get; set; }
        public string Nome { get; set; }
        public string NomeHistorico { get; set; }
        public string Horario { get; set; }
        public string Capacidade { get; set; }
        public string Ordem { get; set; }
        public bool BloqueioAtribuicao { get; set; }
    }
}
