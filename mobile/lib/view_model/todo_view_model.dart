import 'package:flutter/material.dart';
import '../model/todo_item.dart';
import '../generated/shared/todo.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class TodoViewModel extends ChangeNotifier {
  late final TodoServiceClient _client;
  final List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  TodoViewModel() {
    final channel = ClientChannel(
      '192.168.1.113',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    _client = TodoServiceClient(channel);

    syncTodos();
  }

  Future<void> syncTodos() async {
    final stream = _client.get(EmptyMessage());

    await for (final todoMsg in stream) {
      final todo = Todo(
        id: todoMsg.id,
        title: todoMsg.title,
        description: todoMsg.description,
        isComplete: todoMsg.isComplete
      );

      if (_todos.isEmpty) {
        _todos.add(todo);
      }
      else if (_todos.isNotEmpty) {
        var index = findTodo(todo);
        if (index != -1) {
          _todos[index] = todo;
        }
        else {
          _todos.add(todo);
        }
      }

      notifyListeners();
    }
  }

  Future<void> addTodo(String title, String description) async {
    final response = await _client.create(
      TodoMessage(
        id: 0,
        title: title,
        description: description,
        isComplete: false,
      )
    );

    _todos.add(mapTodo(response));
    notifyListeners();
  }

  Future<void> updateTodo(Todo todo) async {
    final response = await _client.update(
        TodoMessage(
          id: todo.id,
          title: todo.title,
          description: todo.description,
          isComplete: todo.isComplete,
        )
    );

    var index = findTodo(todo);
    if (index != -1) {
      _todos[index] = mapTodo(response);
      notifyListeners();
    }
  }

  Future<void> deleteTodo(int id) async {
    await _client.delete(TodoMessage(id: id));
    _todos.removeWhere((t) => t.id == id);
    notifyListeners();
  }

  int findTodo(Todo todo) {
    var todosList = _todos.toList();
    return todosList.indexWhere((td) => td.id == todo.id);
  }

  Todo mapTodo(TodoMessage msg) {
    return Todo(
      id: msg.id,
      title: msg.title,
      description: msg.description,
      isComplete: msg.isComplete
    );
  }
}
