import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/dashboard8_view.dart';

class Dashboard8Controller extends State<Dashboard8View> {
  static late Dashboard8Controller instance;
  late Dashboard8View view;

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
