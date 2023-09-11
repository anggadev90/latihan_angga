import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../../../shared/widget/form/image_picker/image_picker copy.dart';
import '../controller/product_form_controller.dart';

class ProductFormView extends StatefulWidget {
  final Map? item;
  ProductFormView({Key? key, this.item}) : super(key: key);

  Widget build(context, ProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("ProductForm"),
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
                  }),
              QTextField(
                label: "Product name",
                validator: Validator.required,
                value: controller.productName,
                onChanged: (value) {
                  controller.productName = value;
                },
              ),
              QTextField(
                label: "Price",
                validator: Validator.required,
                value: controller.price?.toString(),
                onChanged: (value) {
                  controller.price = double.tryParse(value) ?? 0;
                },
              ),
              QTextField(
                label: "Category",
                validator: Validator.required,
                value: controller.category,
                onChanged: (value) {
                  controller.category = value;
                },
              ),
              QTextField(
                label: "Description",
                validator: Validator.required,
                value: controller.description,
                onChanged: (value) {
                  controller.description = value;
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
  State<ProductFormView> createState() => ProductFormController();
}
