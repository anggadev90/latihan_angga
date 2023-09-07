import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/banner_image_service/banner_image_service.dart';
import '../view/banner_images_list_view.dart';

class BannerImagesListController extends State<BannerImagesListView> {
  static late BannerImagesListController instance;
  late BannerImagesListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List banner = [];
  getBanner() async {
    banner = await BannerImageService().getBanner();
    setState(() {});
  }

  deletBanner(int id) async {
    await BannerImageService().deleet(id);
    getBanner();
  }
}
