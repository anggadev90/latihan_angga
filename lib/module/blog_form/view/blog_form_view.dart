import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/blog_form_controller.dart';

class BlogFormView extends StatefulWidget {
  final Map? item;
  BlogFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, BlogFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("BlogForm"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              QTextField(
                label: "Tittle",
                validator: Validator.required,
                value: controller.tittle,
                onChanged: (value) {
                  controller.tittle = value;
                },
              ),
              QMemoField(
                label: "Body",
                validator: Validator.required,
                value: controller.body,
                onChanged: (value) {
                  controller.body = value;
                },
              ),
              QImagePicker(
                label: "Cover image",
                validator: Validator.required,
                value: controller.coverImage,
                onChanged: (value) {
                  controller.coverImage = value;
                },
              ),
              QDropdownField(
                label: "Category",
                validator: Validator.required,
                value: controller.category,
                items: [
                  {
                    "label": "Admin",
                    "value": 1,
                  },
                  {
                    "label": "Staff",
                    "value": 2,
                  }
                ],
                onChanged: (value, label) {
                  controller.category = value;
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
  State<BlogFormView> createState() => BlogFormController();
}
