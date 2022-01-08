import 'package:flutter/material.dart';

import '../models/todo_model.dart';

class TodoListProvider with ChangeNotifier {
  final List<TodoModel> _todoList = [];

  List<TodoModel> get todoList => _todoList;

  void addTodo(TodoModel todo) async {
    _todoList.add(todo);
    notifyListeners();
  }
}
