import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/payment_view.dart';

class PaymentController extends State<PaymentView> {
  static late PaymentController instance;
  late PaymentView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
