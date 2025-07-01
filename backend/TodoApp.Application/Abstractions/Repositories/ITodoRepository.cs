using TodoApp.Domain.Entities;

namespace TodoApp.Application.Abstractions.Repositories;

public interface ITodoRepository
{
    public Task<IAsyncEnumerable<Todo>> GetAllAsync();
    public Task<Todo?> CreateAsync(Todo todo);
    public Task<Todo?> UpdateAsync(Todo todo);
    public Task<bool> DeleteAsync(Todo todo);
}