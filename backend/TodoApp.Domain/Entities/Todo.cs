using System.ComponentModel.DataAnnotations;

namespace TodoApp.Domain.Entities;

public class Todo
{
    [Key]
    public long Id { get; set; }

    public string Title { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public bool IsComplete { get; set; }
}