namespace Emat.Domain.Models
{
    public class UsuarioModel
    {
        public int ID { get; set; }
        public string? Nome { get; set; }
        public string? NomeAcesso { get; set; }
        public string? Senha { get; set; }
        public string? Rg { get; set; }
        public string? NivelAcesso { get; set; }
        public bool Ativo { get; set; }
    }
}
