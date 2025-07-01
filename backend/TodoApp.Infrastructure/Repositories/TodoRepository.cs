using TodoApp.Application.Abstractions.Repositories;
using TodoApp.Domain.Entities;

namespace TodoApp.Infrastructure.Repositories;

public class TodoRepository(ApplicationDbContext applicationDbContext) : ITodoRepository
{
    public IAsyncEnumerable<Todo> GetAllAsync() => applicationDbContext.Todos.AsAsyncEnumerable();

    public async Task<Todo?> CreateAsync(Todo todo)
    {
        var x = await applicationDbContext.AddAsync(todo);
        await applicationDbContext.SaveChangesAsync();
        return x.Entity;
    }

    public Task<Todo?> UpdateAsync(Todo todo)
    {
        var x = applicationDbContext.Update(todo);
        applicationDbContext.SaveChanges();
        return Task.FromResult(x.Entity)!;
    }

    public Task<bool> DeleteAsync(Todo todo)
    {
        var x = applicationDbContext.Todos.FirstOrDefault(t => t.Id == todo.Id);
        if (x == null) return Task.FromResult(false);
        
        applicationDbContext.Remove(x);
        applicationDbContext.SaveChanges();
        
        return Task.FromResult(true);
    }
}