using Emat.Domain.Models;

namespace Emat.Gerenciador.Interfaces
{
    public interface IGerenciadorUsuarios
    {
        Task<UsuarioModel?> GetUsuarioByIdAsync(string id);
        Task<IEnumerable<UsuarioModel?>> GetUsuariosAsync();
    }
}