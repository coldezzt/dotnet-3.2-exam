using TodoApp.Domain.Entities;
using TodoApp.Domain.Models;

namespace TodoApp.Domain.Abstractions;

public interface ITodoService
{
    public IAsyncEnumerable<Todo> GetAllAsync();
    public Task<Todo?> CreateAsync(Todo todo);
    public Task<Todo?> UpdateAsync(Todo todo);
    public Task<bool> DeleteAsync(Todo todo);
}