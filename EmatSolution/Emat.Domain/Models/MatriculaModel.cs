namespace Emat.Domain.Models
{
    public class MatriculaModel
    {
        public int ID { get; set; }
        public string NumeroMatricula { get; set; }
        public int EnsinoId { get; set; }
        public bool Atual { get; set; }
        public string DataInicio { get; set; }
        public string DataTermino { get; set; }
    }
}