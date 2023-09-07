import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/product_service/product_service.dart';
import '../view/product_form_view.dart';

class ProductFormController extends State<ProductFormView> {
  static late ProductFormController instance;
  late ProductFormView view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
      photo = widget.item!["photo"];
      productName = widget.item!["product_name"];
      category = widget.item!["category"];
      description = widget.item!["description"];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? photo;
  String? productName;
  double? price;
  String? category;
  String? description;

  bool get isEditMode => widget.item != null;

  doSave() async {
    if (isEditMode) {
      await ProductService().update(id: widget.item!["id"], item: {
        "photo": photo,
        "product_name": productName,
        "price": price,
        "category": category,
        "description": description,
      });
    } else {
      await ProductService().add({
        "photo": photo,
        "product_name": productName,
        "price": price,
        "category": category,
        "description": description,
      });
    }
    Get.back();
  }
}
