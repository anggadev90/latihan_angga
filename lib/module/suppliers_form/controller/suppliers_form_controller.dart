import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/suppliers_form_view.dart';

class SuppliersFormController extends State<SuppliersFormView> {
  static late SuppliersFormController instance;
  late SuppliersFormView view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
      suppliersName = widget.item!["suppliers_name"];
      Email = widget.item!["email"];
      Whatsapp = widget.item!["whatsapp"];
      Address = widget.item!["address"];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? suppliersName;
  String? Email;
  String? Whatsapp;
  String? Address;

  bool get isEditMode => widget.item != null;

  doSave() async {
    if (isEditMode) {
      await SuppliersService().update(id: widget.item!["id"], item: {
        "suppliers_name": suppliersName,
        "email": Email,
        "whatsapp": Whatsapp,
        "address": Address,
      });
    } else {
      await SuppliersService().add({
        "suppliers_name": suppliersName,
        "email": Email,
        "whatsapp": Whatsapp,
        "address": Address,
      });
    }

    Get.back();
  }
}
