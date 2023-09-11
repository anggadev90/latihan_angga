import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hyper_ui/core.dart';
import '../controller/tem of service_controller.dart';

class TemOfServiceView extends StatefulWidget {
  const TemOfServiceView({Key? key}) : super(key: key);

  Widget build(context, TemOfServiceController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
          title: const Text("TemOfService"),
          actions: const [],
        ),
        body: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse("https://example.com")),
        ));
  }

  @override
  State<TemOfServiceView> createState() => TemOfServiceController();
}
