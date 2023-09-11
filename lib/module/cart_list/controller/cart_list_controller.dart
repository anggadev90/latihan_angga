import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/cart_list_view.dart';

class CartListController extends State<CartListView> {
  static late CartListController instance;
  late CartListView view;

  @override
  void initState() {
    instance = this;
    getProduct();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List product = [];
  getProduct() async {
    product = await ProductService().getProduct();
    setState(() {});
  }

  increaseQty(Map item) {
    item["qty"] ?? 0;
    item["qty"]++;
    setState(() {});
  }

  decreaseQty(Map item) {
    item["qty"] ?? 0;
    item["qty"]--;
    setState(() {});
  }
}
