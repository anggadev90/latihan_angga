import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/todo_form_view.dart';

class TodoFormController extends State<TodoFormView> {
  static late TodoFormController instance;
  late TodoFormView view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
      id = widget.item!["id"];
      title = widget.item!["title"];
      description = widget.item!["description"];
      attachment = widget.item!["attachment"];
      status = widget.item!["status"];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int? id;
  String? title;
  String? description;
  String? attachment;
  String? status;

  bool get isEditMode => widget.item != null;

  doSave() async {
    if (isEditMode) {
      await TodoService().update(id: widget.item!["id"], item: {
        "id": id,
        "tittle": title,
        "description": description,
        "attachment": attachment,
        "status": status,
      });
    } else {
      await TodoService().create({
        "id": id,
        "tittle": title,
        "description": description,
        "attachment": attachment,
        "status": status,
      });
    }
    Get.back();
  }
}
