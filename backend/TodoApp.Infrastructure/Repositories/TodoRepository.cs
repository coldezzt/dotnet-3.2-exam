using TodoApp.Application.Abstractions.Repositories;
using TodoApp.Domain.Entities;

namespace TodoApp.Infrastructure.Repositories;

public class TodoRepository(ApplicationDbContext applicationDbContext) : ITodoRepository
{
    public Task<IAsyncEnumerable<Todo>> GetAllAsync() => Task.FromResult(applicationDbContext.Todos.AsAsyncEnumerable());

    public async Task<Todo?> CreateAsync(Todo todo)
    {
        var x = await applicationDbContext.AddAsync(todo);
        return x.Entity;
    }

    public Task<Todo?> UpdateAsync(Todo todo)
    {
        var x = applicationDbContext.Update(todo);
        return Task.FromResult(x.Entity)!;
    }

    public Task<bool> DeleteAsync(Todo todo)
    {
        var x = applicationDbContext.Todos.FirstOrDefault(t => t.Id == todo.Id);
        if (x == null) return Task.FromResult(true);
        
        applicationDbContext.Remove(x);
        return Task.FromResult(true);
    }
}