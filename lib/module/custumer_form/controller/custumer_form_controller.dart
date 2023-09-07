import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/customer_service/customer_service.dart';
import '../view/custumer_form_view.dart';

class CustumerFormController extends State<CustumerFormView> {
  static late CustumerFormController instance;
  late CustumerFormView view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
      customerName = widget.item!["customer_name"];
      Email = widget.item!["email"];
      Whatsapp = widget.item!["whatsapp"];
      Address = widget.item!["adress"];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? customerName;
  String? Email;
  String? Whatsapp;
  String? Address;

  bool get isEditMode => widget.item != null;

  doSave() async {
    if (isEditMode) {
      await CustomerService().update(
        id: widget.item!["id"],
        item: {
          "customer_name": customerName,
          "email": Email,
          "whatsapp": Whatsapp,
          "adress": Address,
        },
      );
    } else {
      await CustomerService().create(
        {
          "customer_name": customerName,
          "email": Email,
          "whatsapp": Whatsapp,
          "adress": Address,
        },
      );
    }
    Get.back();
  }
}
