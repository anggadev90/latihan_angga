import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hyper_ui/core.dart';
import '../controller/payment_controller.dart';

class PaymentView extends StatefulWidget {
  final String paymentUrl;
  const PaymentView({Key? key, required this.paymentUrl}) : super(key: key);

  Widget build(context, PaymentController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Payment"),
          actions: const [],
        ),
        body: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(paymentUrl)),
          onLoadStart: (controller, url) {
            if (url.toString().contains(
                "https://simulator.sandbox.midtrans.com/gopay/partner/app/verifyPaymentPin")) {
              Get.offAll(ModuleListView());
              snackbarPrimary(message: "Transaction success!");
            }
          },
        ));
  }

  @override
  State<PaymentView> createState() => PaymentController();
}
