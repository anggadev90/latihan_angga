import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/dashboard6_view.dart';

class Dashboard6Controller extends State<Dashboard6View> {
  static late Dashboard6Controller instance;
  late Dashboard6View view;

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
