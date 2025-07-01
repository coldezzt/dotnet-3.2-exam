namespace TodoApp.Domain.Models;

public class Result
{
    public bool IsSuccess { get; set; }
    public List<string>? Errors { get; set; } = [];
}

public class Result<T>
{
    public bool IsSuccess { get; set; }
    public List<string>? Errors { get; set; } = [];
    public T? Data { get; set; }
}