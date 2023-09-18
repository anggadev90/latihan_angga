import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/order_list2_view.dart';

class OrderList2Controller extends State<OrderList2View> {
  static late OrderList2Controller instance;
  late OrderList2View view;

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
    },
    {
      "name": "Leon",
      "time": 19.30,
      "price": 140.000,
    },
    {
      "name": "Lettie",
      "time": 19.30,
      "price": 120.000,
    },
    {
      "name": "Leona",
      "time": 19.30,
      "price": 132.500,
    },
    {
      "name": "Leon",
      "time": 19.30,
      "price": 190.000,
    },
    {
      "name": "Georgie",
      "time": 19.30,
      "price": 195.000,
    },
  ];
}
