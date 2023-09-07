import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/product_categories_form_controller.dart';

class ProductCategoriesFormView extends StatefulWidget {
  final Map? item;
  ProductCategoriesFormView({Key? key, this.item}) : super(key: key);

  Widget build(context, ProductCategoriesFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("ProductCategoriesForm"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              QCategoryPicker(
                label: "Category",
                items: [
                  {
                    "label": "Main Course",
                    "value": "Main Course",
                  },
                  {
                    "label": "Drink",
                    "value": "Drink",
                  },
                  {
                    "label": "Snack",
                    "value": "Snack",
                  },
                  {
                    "label": "Dessert",
                    "value": "Dessert",
                  }
                ],
                validator: Validator.required,
                value: controller.categoryName,
                onChanged: (index, label, value, item) {
                  controller.categoryName = value;
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
  State<ProductCategoriesFormView> createState() =>
      ProductCategoriesFormController();
}
