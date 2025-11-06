
import 'package:flutter/material.dart';
import 'package:myapp/todo.dart';
import 'data_base_service.dart';

class HomeViewModel extends ChangeNotifier {
  final DataBaseService _dataBaseService;
  List<Todo> todos = [];

  HomeViewModel(this._dataBaseService);

  void add(String value) async {
    final todo = Todo(title: value);
   await _dataBaseService.insertTodo(todo);
   fetchTodo();
  }

  void fetchTodo() async {
    todos = await _dataBaseService.listTodo();
    notifyListeners();
  }

  void update(Todo value) async {
  await _dataBaseService.updateTodo(value);
  fetchTodo();
  }

  void remove(Todo value) async {
    await _dataBaseService.deleteTodo(value);
    fetchTodo();
  }
}
