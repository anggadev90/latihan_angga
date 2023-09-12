import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/cart_grid_view.dart';

class CartGridController extends State<CartGridView> {
  static late CartGridController instance;
  late CartGridView view;

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
