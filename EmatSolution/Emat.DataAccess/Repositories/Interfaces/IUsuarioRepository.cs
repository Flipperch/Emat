using Emat.Domain.Models;

namespace Emat.DataAccess.Repositories.Interfaces
{
    public interface IUsuarioRepository
    {
        Task<IEnumerable<UsuarioModel>> GetUsuariosAsync();
        Task<UsuarioModel?> GetUsuarioByIdAsync(string id);
    }
}