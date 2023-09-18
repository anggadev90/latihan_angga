import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/order_list5_view.dart';

class OrderList5Controller extends State<OrderList5View> {
  static late OrderList5Controller instance;
  late OrderList5View view;

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
      "tahun": 2023,
      "status": "paid",
      "tanggal": 21,
      "bulan": "Dec",
      "order": "order.#3292",
    },
    {
      "name": "Leon",
      "time": 19.30,
      "price": 140.000,
      "status": "paid",
      "tahun": 2023,
      "tanggal": 21,
      "bulan": "Dec",
      "order": "order.#2342",
    },
    {
      "name": "Lettie",
      "time": 19.30,
      "price": 120.000,
      "status": "unpaid",
      "tahun": 2023,
      "tanggal": 21,
      "bulan": "Dec",
      "order": "order.#1232",
    },
  ];
}
