import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/users_service/users_service.dart';
import '../view/users_view.dart';

class UsersController extends State<UsersView> {
  static late UsersController instance;
  late UsersView view;

  @override
  void initState() {
    instance = this;

    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List users = [];
  getUsers() async {
    users = await UsersService().getUsers();
    setState(() {});
  }

  deleteUSers(int id) async {
    await UsersService().delete(id);
    getUsers();
  }
}
