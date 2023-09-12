import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../../../service/payment_service/payment_service.dart';
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

  List products = [];
  getProduct() async {
    products = await ProductService().getProduct();
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

  double get total {
    double productTotal = 0;
    for (var item in products) {
      item["qty"] ??= 0;
      productTotal += item["qty"] * item["price"];
    }
    return productTotal;
  }

  doCheckout() async {
    String paymentUrl = await PaymentService().getPaymentLink(
      total: total * 15000,
    );
    print(paymentUrl);

    Get.to(PaymentView(
      paymentUrl: paymentUrl,
    ));
  }
}
