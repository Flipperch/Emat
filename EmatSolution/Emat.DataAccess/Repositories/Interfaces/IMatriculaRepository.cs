using Emat.Domain.Models;

namespace Emat.DataAccess.Repositories.Interfaces
{
    public interface IMatriculaRepository
    {
        Task<MatriculaModel?> GetMatriculaByIdAsync(string id);
        Task<IEnumerable<MatriculaModel>> GetMatriculasAsync();
    }
}