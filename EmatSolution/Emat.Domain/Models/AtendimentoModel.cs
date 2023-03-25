using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Emat.Domain.Models
{
    public class AtendimentoModel
    {
        public int ID { get; set; }
        public string? Nome { get; set; }
        public int DisciplinaId { get; set; }
        public bool Mencao { get; set; }
        public bool Ativo { get; set; }
        public string Ordem { get; set; }
    }
}
