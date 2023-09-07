import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/vouchers_service/vouchers_sevice.dart';
import '../view/vouchers_form_view.dart';

class VouchersFormController extends State<VouchersFormView> {
  static late VouchersFormController instance;
  late VouchersFormView view;

  @override
  void initState() {
    instance = this;
    if (IsEditMode) {
      voucherName = widget.item!["voucher_name"];
      Voucherdiscount = widget.item!["voucher_discount"];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? voucherName;
  String? Voucherdiscount;

  bool get IsEditMode => widget.item != null;

  doSave() async {
    if (IsEditMode) {
      await VouchersService().update(id: widget.item!["id"], item: {
        "voucher_name": voucherName,
        "voucher_discount": Voucherdiscount,
      });
    } else {
      await VouchersService().add({
        "voucher_name": voucherName,
        "voucher_discount": Voucherdiscount,
      });
    }

    Get.back();
  }
}
