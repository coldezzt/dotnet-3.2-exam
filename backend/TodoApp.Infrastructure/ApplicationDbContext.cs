using Microsoft.EntityFrameworkCore;
using TodoApp.Domain.Entities;

namespace TodoApp.Infrastructure;

public class ApplicationDbContext : DbContext
{
    public DbSet<Todo> Todos => Set<Todo>();
}