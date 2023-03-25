using Emat.DataAccess.Repositories.Interfaces;
using Emat.Domain.Models;
using Emat.Services.Interfaces;

namespace Emat.Services
{
    public class MatriculaService : IMatriculaService
    {
        private readonly IMatriculaRepository _MatriculaRepository;

        public MatriculaService(IMatriculaRepository MatriculaRepository) => _MatriculaRepository = MatriculaRepository;

        public async Task<IEnumerable<MatriculaModel>> GetMatriculasAsync() => await _MatriculaRepository.GetMatriculasAsync();

        public async Task<MatriculaModel?> GetMatriculaByIdAsync(string id) => await _MatriculaRepository.GetMatriculaByIdAsync(id);

    }
}
