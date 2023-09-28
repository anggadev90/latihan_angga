import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/dashboard13_view.dart';

class Dashboard13Controller extends State<Dashboard13View> {
  static late Dashboard13Controller instance;
  late Dashboard13View view;

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
