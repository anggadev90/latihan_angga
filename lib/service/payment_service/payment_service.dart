import 'dart:convert';

import '../../core_package.dart';

class PaymentService {
  Future<String> getPaymentLink({
    required double total,
  }) async {
    var str = "SB-Mid-server-pX5QJfDJVX8QcY-cQfoPLR0U";
    final bytes = utf8.encode(str);
    final base64Str = base64.encode(bytes);
    var response = await Dio().post(
      "https://api.sandbox.midtrans.com/v1/payment-links",
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          "Authorization": "Basic $base64Str"
        },
      ),
      data: {
        "transaction_details": {"order_id": Uuid().v4(), "gross_amount": total},
        "usage_limit": 1
      },
    );
    Map obj = response.data;
    return obj["payment_url"];
  }
}
