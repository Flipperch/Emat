namespace Emat.Domain.Models
{
    public class AlunoModel
    {
        public int ID { get; set; }
        public string NumeroMatricula { get; set; }
        public string DataMatricula { get; set; }
        public string Cpf { get; set; }
        public string Ra { get; set; }
        public string Rg { get; set; }
        public string UfRg { get; set; }
        public string OrgaoRg { get; set; }
        public string DataRg { get; set; }
        public string Nome { get; set; }
        public string DataNascimento { get; set; }
        public string Sexo { get; set; }
        public string NomeMae { get; set; }
        public string NomePai { get; set; }
        public string EstadoCivil { get; set; }
        public string CorOrigemEtnica { get; set; }
        public string Telefone { get; set; }
        public string Celular { get; set; }
        public string TermoMatricula { get; set; }
        public string Email { get; set; }
        public bool Ativo { get; set; }
        public bool Concluinte { get; set; }
        public string ObservacaoPassaporte { get; set; }
        public bool ApresentouCertidao { get; set; }
        public bool ApresentouHistorico { get; set; }
        public string NomeSocial { get; set; }
        public string UsuarioId { get; set; }
        public string DigRa { get; set; }
        public string UfRa { get; set; }
    }
}