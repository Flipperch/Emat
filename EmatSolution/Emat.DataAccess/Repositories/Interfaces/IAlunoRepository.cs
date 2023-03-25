using Emat.Domain.Models;

namespace Emat.DataAccess.Repositories.Interfaces
{
    public interface IAlunoRepository
    {
        Task<AlunoModel?> GetAlunoByIdAsync(string id);
        Task<IEnumerable<AlunoModel>> GetAlunosAsync();
    }
}