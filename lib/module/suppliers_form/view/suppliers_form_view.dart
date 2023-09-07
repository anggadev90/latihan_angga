import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/suppliers_form_controller.dart';

class SuppliersFormView extends StatefulWidget {
  final Map? item;
  SuppliersFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, SuppliersFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("SuppliersForm"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              QTextField(
                label: "Suppliers_name",
                validator: Validator.required,
                value: controller.suppliersName,
                onChanged: (value) {
                  controller.suppliersName = value;
                },
              ),
              QTextField(
                label: "Email",
                validator: Validator.email,
                value: controller.Email,
                suffixIcon: Icons.email,
                onChanged: (value) {
                  controller.Email = value;
                },
              ),
              QTextField(
                label: "Whatsapp",
                validator: Validator.required,
                value: controller.Whatsapp,
                onChanged: (value) {
                  controller.Whatsapp = value;
                },
              ),
              QMemoField(
                label: "Address",
                validator: Validator.required,
                value: controller.Address,
                onChanged: (value) {
                  controller.Address = value;
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
  State<SuppliersFormView> createState() => SuppliersFormController();
}
