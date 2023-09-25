import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/dashboard3_view.dart';

class Dashboard3Controller extends State<Dashboard3View> {
  static late Dashboard3Controller instance;
  late Dashboard3View view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List histories = [
    {
      "id": 1,
      "label": "Net Banking",
      "color": successColor,
      "icon": Icons.bakery_dining,
      "price": 365.89,
      "date": "Today",
    },
    {
      "id": 2,
      "label": "Food & Drinks",
      "color": warningColor,
      "icon": Icons.food_bank,
      "price": 165.99,
      "date": "26 Sep 2023",
    },
    {
      "id": 3,
      "label": "Net Clothes",
      "color": infoColor,
      "icon": Icons.store,
      "price": 65.09,
      "date": "17 Sep 2023",
    },
    {
      "id": 4,
      "label": "Electricity",
      "color": primaryColor,
      "icon": Icons.person,
      "price": 165.09,
      "date": "23 Sep 2023",
    },
    {
      "id": 5,
      "label": "Drinks",
      "color": secondaryColor,
      "icon": Icons.local_drink,
      "price": 120.09,
      "date": "Today",
    },
  ];
}
