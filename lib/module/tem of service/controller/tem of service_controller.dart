import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/tem of service_view.dart';

class TemOfServiceController extends State<TemOfServiceView> {
  static late TemOfServiceController instance;
  late TemOfServiceView view;

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
