import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/banner_image_form_controller.dart';

class BannerImageFormView extends StatefulWidget {
  final Map? item;
  BannerImageFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, BannerImageFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("BannerImageForm"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              QTextField(
                label: "banner_name",
                validator: Validator.required,
                value: controller.bannerName,
                onChanged: (value) {
                  controller.bannerName = value;
                },
              ),
              QImagePicker(
                label: "Photo",
                validator: Validator.required,
                value: controller.photo,
                onChanged: (value) {
                  controller.photo = value;
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Save",
        onPressed: () => controller.doSave(),
      ),
    );
  }

  @override
  State<BannerImageFormView> createState() => BannerImageFormController();
}
