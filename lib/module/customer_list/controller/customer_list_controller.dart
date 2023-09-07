import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/customer_service/customer_service.dart';
import '../view/customer_list_view.dart';

class CustomerListController extends State<CustomerListView> {
  static late CustomerListController instance;
  late CustomerListView view;

  @override
  void initState() {
    instance = this;
    getProducts();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  List products = [];
  getProducts() async {
    products = await CustomerService().getProducts();
    setState(() {});
  }

  deleteProduct(int id) async {
    await CustomerService().delete(id);
    getProducts();
  }
}
