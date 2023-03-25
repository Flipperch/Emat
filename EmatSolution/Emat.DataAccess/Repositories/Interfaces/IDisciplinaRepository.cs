using Emat.Domain.Models;

namespace Emat.DataAccess.Repositories.Interfaces
{
    public interface IDisciplinaRepository
    {
        Task<DisciplinaModel?> GetDisciplinaByIdAsync(string id);
        Task<IEnumerable<DisciplinaModel>> GetDisciplinasAsync();
    }
}