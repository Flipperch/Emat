using Emat.Domain.Models;

namespace Emat.Services.Interfaces
{
    public interface IUsuarioService
    {
        Task<UsuarioModel?> GetUsuarioByIdAsync(string id);
        Task<IEnumerable<UsuarioModel>> GetUsuariosAsync();
    }
}