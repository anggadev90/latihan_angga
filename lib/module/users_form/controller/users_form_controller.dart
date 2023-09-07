import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/users_service/users_service.dart';
import '../view/users_form_view.dart';

class UsersFormController extends State<UsersFormView> {
  static late UsersFormController instance;
  late UsersFormView view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
      photo = widget.item!["photo"];
      fullNAme = widget.item!["full_name"];
      email = widget.item!["email"];
      password = widget.item!["password"];
      whatsapp = widget.item!["whatsapp"];
      address = widget.item!["address"];
      roles = widget.item!["roles"];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? photo;
  String? fullNAme;
  String? email;
  String? password;
  String? whatsapp;
  String? address;
  String? roles;

  bool get isEditMode => widget.item != null;

  doSave() async {
    if (isEditMode) {
      await UsersService().update(id: widget.item!["id"], item: {
        "photo": photo,
        "full_name": fullNAme,
        "email": email,
        "password": password,
        "whatsapp": whatsapp,
        "address": address,
        "roles": roles,
      });
    } else {
      await UsersService().add({
        "photo": photo,
        "full_name": fullNAme,
        "email": email,
        "password": password,
        "whatsapp": whatsapp,
        "address": address,
        "roles": roles,
      });
    }

    Get.back();
  }
}
