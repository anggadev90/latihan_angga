import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/vouchers_form_controller.dart';

class VouchersFormView extends StatefulWidget {
  final Map? item;
  VouchersFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, VouchersFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("VouchersForm"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              QTextField(
                label: "Voucher_name",
                validator: Validator.required,
                value: controller.voucherName,
                onChanged: (value) {
                  controller.voucherName = value;
                },
              ),
              QTextField(
                label: "Voucher_discount",
                validator: Validator.required,
                value: controller.Voucherdiscount,
                onChanged: (value) {
                  controller.Voucherdiscount = value;
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
  State<VouchersFormView> createState() => VouchersFormController();
}
