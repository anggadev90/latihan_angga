import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/suppliers_list_view.dart';

class SuppliersListController extends State<SuppliersListView> {
  static late SuppliersListController instance;
  late SuppliersListView view;

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
    products = await SuppliersService().getProduct();
    setState(() {});
  }

  deleteProduct(int id) async {
    await SuppliersService().delete(id);
    getProduct();
  }
}
