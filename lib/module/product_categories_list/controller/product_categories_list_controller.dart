import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/product_categories_service/product_categories_service.dart';
import '../view/product_categories_list_view.dart';

class ProductCategoriesListController extends State<ProductCategoriesListView> {
  static late ProductCategoriesListController instance;
  late ProductCategoriesListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List product = [];
  getProduct() async {
    product = await ProductCategoriesService().getProduct();
    setState(() {});
  }

  deleteProduct(int id) async {
    await ProductCategoriesService().delete(id);
    getProduct();
  }
}
