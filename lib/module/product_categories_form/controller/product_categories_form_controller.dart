import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/product_categories_service/product_categories_service.dart';
import '../view/product_categories_form_view.dart';

class ProductCategoriesFormController extends State<ProductCategoriesFormView> {
  static late ProductCategoriesFormController instance;
  late ProductCategoriesFormView view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
      categoryName = widget.item!["category_name"];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? categoryName;

  bool get isEditMode => widget.item != null;

  doSave() async {
    if (isEditMode) {
      await ProductCategoriesService().update(id: widget.item!["id"], item: {
        "category": categoryName,
      });
    } else {
      await ProductCategoriesService().add({
        "category": categoryName,
      });
    }

    Get.back();
  }
}
