import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/dashboard10_view.dart';

class Dashboard10Controller extends State<Dashboard10View> {
  static late Dashboard10Controller instance;
  late Dashboard10View view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map> items = [
    {
      "title": "Sales",
      "amount": 1300,
      "color": Colors.red[400],
    },
    {
      "title": "Purchase",
      "amount": 1500,
      "color": Colors.blue,
    },
  ];
}
