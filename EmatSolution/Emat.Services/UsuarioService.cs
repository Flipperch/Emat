using Emat.DataAccess.Repositories.Interfaces;
using Emat.Domain.Models;
using Emat.Services.Interfaces;

namespace Emat.Services
{
    public class UsuarioService : IUsuarioService
    {
        private readonly IUsuarioRepository _usuarioRepository;

        public UsuarioService(IUsuarioRepository usuarioRepository) => _usuarioRepository = usuarioRepository;

        public async Task<IEnumerable<UsuarioModel>> GetUsuariosAsync() => await _usuarioRepository.GetUsuariosAsync();

        public async Task<UsuarioModel?> GetUsuarioByIdAsync(string id) => await _usuarioRepository.GetUsuarioByIdAsync(id);
    }
}
