using Microsoft.EntityFrameworkCore;
using TodoApp.Domain.Entities;

namespace TodoApp.Infrastructure;

public class ApplicationDbContext(DbContextOptions options) : DbContext(options)
{
    public DbSet<Todo> Todos => Set<Todo>();

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        // Mock data
        modelBuilder.Entity<Todo>().HasData(new Todo
        {
            Id = 1,
            Title = "Добавить новую задачу",
            Description = "Попробовать добавить новую задачу, используя меню ниже",
            IsComplete = false
        });
        
        base.OnModelCreating(modelBuilder);
    }
}