import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_model/todo_view_model.dart';
import '../model/todo_item.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<TodoViewModel>(context);

    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: vm.todos.length,
              itemBuilder: (context, index) {
                final todo = vm.todos[index];

                return ListTile(
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                          '${todo.id}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24
                          ),
                      ),
                      const SizedBox(width: 8),
                      Checkbox(
                        value: todo.isComplete,
                        onChanged: (val) {
                          final updatedTodo = Todo(
                            id: todo.id,
                            title: todo.title,
                            description: todo.description,
                            isComplete: val ?? false,
                          );
                          vm.updateTodo(updatedTodo);
                        },
                      ),
                    ],
                  ),
                  title: Text(
                    todo.title,
                    style: TextStyle(
                      decoration: todo.isComplete
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  subtitle: Text(todo.description),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          titleController.text = todo.title;
                          descriptionController.text = todo.description;

                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Edit Todo'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    controller: titleController,
                                    decoration: const InputDecoration(labelText: 'Title'),
                                  ),
                                  TextField(
                                    controller: descriptionController,
                                    decoration: const InputDecoration(labelText: 'Description'),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    final updatedTodo = Todo(
                                      id: todo.id,
                                      title: titleController.text,
                                      description: descriptionController.text,
                                      isComplete: todo.isComplete,
                                    );
                                    vm.updateTodo(updatedTodo);
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Save'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('Cancel'),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => vm.deleteTodo(todo.id),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // inputs for TODOs

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    labelText: 'New Todo Title',
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    labelText: 'New Todo Description',
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    final title = titleController.text.trim();
                    final description = descriptionController.text.trim();
                    if (title.isNotEmpty) {
                      vm.addTodo(title, description);
                      titleController.clear();
                      descriptionController.clear();
                    }
                  },
                  child: const Text('Add Todo'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
