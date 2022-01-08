import 'package:flutter/material.dart';
import 'package:todo_list_provider/models/todo_model.dart';

class TodoListProvider with ChangeNotifier {
  final List<TodoModel> _todoList = [];

  List<TodoModel> get todoList => _todoList;

  void addTodo(TodoModel todo) {
    _todoList.add(todo);
    notifyListeners();
  }
}
