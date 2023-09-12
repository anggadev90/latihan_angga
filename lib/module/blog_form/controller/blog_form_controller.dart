import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/blog_form_view.dart';

class BlogFormController extends State<BlogFormView> {
  static late BlogFormController instance;
  late BlogFormView view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
      tittle = widget.item!["tittle"];
      body = widget.item!["body"];
      coverImage = widget.item!["cover_image"];
      tags = widget.item!["tags"];
      category = widget.item!["category"];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? tittle;
  String? body;
  String? coverImage;
  String? tags;
  String? category;

  bool get isEditMode => widget.item != null;

  doSave() async {
    if (isEditMode) {
      await BlogService().update(id: widget.item!["id"], item: {
        "tittle": tittle,
        "body": body,
        "cover_image": coverImage,
        "tags": tags,
        "category": category,
      });
    } else {
      await BlogService().add({
        "tittle": tittle,
        "body": body,
        "cover_image": coverImage,
        "tags": tags,
        "category": category,
      });
    }

    Get.back();
  }
}
