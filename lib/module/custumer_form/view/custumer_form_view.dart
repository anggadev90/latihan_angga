import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/custumer_form_controller.dart';

class CustumerFormView extends StatefulWidget {
  final Map? item;
  CustumerFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, CustumerFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("CustumerForm"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              QTextField(
                label: "Customer name",
                validator: Validator.required,
                value: controller.customerName,
                onChanged: (value) {
                  controller.customerName = value;
                },
              ),
              QTextField(
                label: "Email",
                validator: Validator.email,
                suffixIcon: Icons.email,
                value: controller.Email,
                onChanged: (value) {
                  controller.Email = value;
                },
              ),
              QTextField(
                label: "Whatsapp",
                validator: Validator.required,
                value: controller.Whatsapp?.toString(),
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
  State<CustumerFormView> createState() => CustumerFormController();
}
