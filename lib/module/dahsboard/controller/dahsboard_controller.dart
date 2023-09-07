import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/dahsboard_view.dart';

class DahsboardController extends State<DahsboardView> {
  static late DahsboardController instance;
  late DahsboardView view;

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
