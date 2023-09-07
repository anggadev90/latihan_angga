import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../../../shared/widget/form/image_picker/circle_image_picker.dart';
import '../controller/edit_profile_controller.dart';

class EditProfileView extends StatefulWidget {
  EditProfileView({Key? key}) : super(key: key);

  Widget build(context, EditProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("EditProfile"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              QCircleImagePicker(
                label: "Photo",
                validator: Validator.required,
                value: null,
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              QTextField(
                label: "Name",
                validator: Validator.required,
                value: "John Doe",
                onChanged: (value) {},
              ),
              QTextField(
                label: "Email",
                validator: Validator.email,
                suffixIcon: Icons.email,
                value: "demo@gmail.com",
                onChanged: (value) {},
              ),
              QDatePicker(
                label: "Birth date",
                validator: Validator.required,
                onChanged: (value) {
                  print("value: $value");
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Update",
        onPressed: () {},
      ),
    );
  }

  @override
  State<EditProfileView> createState() => EditProfileController();
}
