import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/todo_form_controller.dart';

class TodoFormView extends StatefulWidget {
  final Map? item;
  TodoFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, TodoFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("TodoForm"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              QTextField(
                label: "Title",
                validator: Validator.required,
                value: controller.title,
                onChanged: (value) {
                  controller.title = value;
                },
              ),
              QMemoField(
                label: "Description",
                validator: Validator.required,
                value: controller.description,
                onChanged: (value) {
                  controller.description = value;
                },
              ),
              QImagePicker(
                label: "Attachment",
                validator: Validator.required,
                value: controller.attachment,
                onChanged: (value) {
                  controller.attachment = value;
                },
              ),
              QDropdownField(
                label: "Status",
                validator: Validator.required,
                items: [
                  {
                    "label": "Pending",
                    "value": "Pending",
                  },
                  {
                    "label": "Ongoing",
                    "value": "Ongoing",
                  },
                  {
                    "label": "Done",
                    "value": "Done",
                  }
                ],
                value: controller.status ?? "Pending",
                onChanged: (value, label) {
                  controller.status = value;
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Save",
        onPressed: () => controller.doSave(),
      ),
    );
  }

  @override
  State<TodoFormView> createState() => TodoFormController();
}
