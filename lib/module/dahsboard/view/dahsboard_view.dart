import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/dahsboard_controller.dart';

class DahsboardView extends StatefulWidget {
  const DahsboardView({Key? key}) : super(key: key);

  Widget build(context, DahsboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dahsboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<DahsboardView> createState() => DahsboardController();
}
