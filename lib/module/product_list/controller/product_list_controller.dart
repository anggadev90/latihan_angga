import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/product_service/product_service.dart';
import '../view/product_list_view.dart';

class ProductListController extends State<ProductListView> {
  static late ProductListController instance;
  late ProductListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List products = [];
  getProduct() async {
    products = await ProductService().getProduct();
    setState(() {});
  }

  deleteProduct(int id) async {
    await ProductService().delete(id);
    getProduct();
  }
}
