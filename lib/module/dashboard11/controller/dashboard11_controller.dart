import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/dashboard11_view.dart';

class Dashboard11Controller extends State<Dashboard11View> {
  static late Dashboard11Controller instance;
  late Dashboard11View view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> chat = [
    {
      "id": 1,
      "message": "Hello, Erin!",
    },
    {
      "id": 2,
      "message": "Hi",
    },
    {
      "id": 3,
      "message": "How can I help?",
    },
    {
      "id": 4,
      "message": "I want to rent a car",
    },
    {
      "id": 5,
      "message": "How long would you like to rent?",
    },
    {
      "id": 6,
      "message": "3 days",
    },
    {
      "id": 7,
      "message": "Ok",
    },
    {
      "id": 8,
      "message": "Thanks",
    },
  ];
}
