import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/order_list4_view.dart';

class OrderList4Controller extends State<OrderList4View> {
  static late OrderList4Controller instance;
  late OrderList4View view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List order = [
    {
      "name": "Leona",
      "time": 19.30,
      "price": 132.500,
      "status": "paid",
    },
    {
      "name": "Leon",
      "time": 19.30,
      "price": 140.000,
      "status": "paid",
    },
    {
      "name": "Lettie",
      "time": 19.30,
      "price": 120.000,
      "status": "unpaid",
    },
    {
      "name": "Leona",
      "time": 19.30,
      "price": 132.500,
      "status": "paid",
    },
    {
      "name": "Leon",
      "time": 19.30,
      "price": 190.000,
      "status": "paid",
    },
    {
      "name": "Georgie",
      "time": 19.30,
      "price": 195.000,
      "status": "paid",
    },
  ];
}
