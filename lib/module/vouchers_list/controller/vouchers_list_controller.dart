import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/vouchers_service/vouchers_sevice.dart';
import '../view/vouchers_list_view.dart';

class VouchersListController extends State<VouchersListView> {
  static late VouchersListController instance;
  late VouchersListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List vouchers = [];
  getVoucher() async {
    vouchers = await VouchersService().getVoucher();
    setState(() {});
  }

  deleteVouchers(int id) async {
    await VouchersService().delete(id);
    getVoucher();
  }
}
