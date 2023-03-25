using Emat.Domain.Models;

namespace Emat.Services.Interfaces
{
    public interface IMatriculaService
    {
        Task<MatriculaModel?> GetMatriculaByIdAsync(string id);
        Task<IEnumerable<MatriculaModel>> GetMatriculasAsync();
    }
}