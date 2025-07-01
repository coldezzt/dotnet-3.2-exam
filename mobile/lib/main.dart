import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view_model/todo_view_model.dart';
import 'view/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TodoViewModel(),
      child: const MaterialApp(
        home: TodoScreen(),
      ),
    );
  }
}
