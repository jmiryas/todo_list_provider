import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/add_edit_todo_widget.dart';
import '../providers/todo_list_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Todo List Provider"),
      ),
      body: Consumer<TodoListProvider>(builder: (context, todoProvider, child) {
        return ListView(
          padding: const EdgeInsets.all(20.0),
          children: todoProvider.todoList.map((todo) {
            return ListTile(
              title: Text(todo.todo),
            );
          }).toList(),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return const AddEditTodoWidget(title: "Tambah Todo");
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
