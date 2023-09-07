import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/banner_image_service/banner_image_service.dart';
import '../view/banner_image_form_view.dart';

class BannerImageFormController extends State<BannerImageFormView> {
  static late BannerImageFormController instance;
  late BannerImageFormView view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
      bannerName = widget.item!["banner_name"];
      photo = widget.item!["photo"];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? bannerName;
  String? photo;

  bool get isEditMode => widget.item != null;

  doSave() async {
    if (isEditMode) {
      await BannerImageService().update(id: widget.item!["id"], item: {
        "banner_name": bannerName,
        "photo": photo,
      });
    } else {
      await BannerImageService().add({
        "banner_name": bannerName,
        "phoyo": photo,
      });
    }

    Get.back();
  }
}
