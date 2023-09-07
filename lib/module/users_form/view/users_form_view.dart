import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/users_form_controller.dart';

class UsersFormView extends StatefulWidget {
  final Map? item;
  UsersFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, UsersFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("UsersForm"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              QImagePicker(
                label: "Photo",
                validator: Validator.required,
                value: controller.photo,
                onChanged: (value) {
                  controller.photo = value;
                },
              ),
              QTextField(
                label: "Full name",
                validator: Validator.required,
                value: controller.fullNAme,
                onChanged: (value) {
                  controller.fullNAme = value;
                },
              ),
              QTextField(
                label: "Email",
                validator: Validator.email,
                value: controller.email,
                suffixIcon: Icons.email,
                onChanged: (value) {
                  controller.email = value;
                },
              ),
              QTextField(
                label: "Password",
                obscure: true,
                validator: Validator.required,
                value: controller.password,
                suffixIcon: Icons.password,
                onChanged: (value) {
                  controller.password = value;
                },
              ),
              QTextField(
                label: "Whatsapp",
                validator: Validator.required,
                value: controller.whatsapp,
                onChanged: (value) {
                  controller.whatsapp = value;
                },
              ),
              QMemoField(
                label: "Address",
                validator: Validator.required,
                value: controller.address,
                onChanged: (value) {
                  controller.address = value;
                },
              ),
              QDropdownField(
                label: "Roles",
                validator: Validator.required,
                value: controller.roles,
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
                  controller.roles = value;
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
  State<UsersFormView> createState() => UsersFormController();
}
