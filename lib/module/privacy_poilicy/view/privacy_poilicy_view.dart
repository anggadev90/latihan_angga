import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hyper_ui/core.dart';
import '../controller/privacy_poilicy_controller.dart';

class PrivacyPoilicyView extends StatefulWidget {
  const PrivacyPoilicyView({Key? key}) : super(key: key);

  Widget build(context, PrivacyPoilicyController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
          title: const Text("PrivacyPoilicy"),
          actions: const [],
        ),
        body: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse("https://example.com")),
        ));
  }

  @override
  State<PrivacyPoilicyView> createState() => PrivacyPoilicyController();
}
