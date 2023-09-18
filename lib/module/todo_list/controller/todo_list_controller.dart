import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/todo_service/todo_service.dart';
import '../view/todo_list_view.dart';

class TodoListController extends State<TodoListView> {
  static late TodoListController instance;
  late TodoListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List todos = [];
  getTodos() async {
    todos = await TodoService().getTodos();
    setState(() {});
  }

  deleteTodos(int id) async {
    await TodoService().delete(id);
    getTodos();
  }
}
