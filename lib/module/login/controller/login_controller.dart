import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/login_view.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? email;
  String? password;
  doLogin() async {
    try {
      showLoading();
      await AuthService().login(email: email!, password: password!);
      await Get.offAll(DashboardView());
      hideLoading();
    } on Exception catch (err) {
      showInfoDialog("Gagal login");
    }
  }
}
