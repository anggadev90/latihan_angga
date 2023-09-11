import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 36.0,
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "John Doe",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "demo@gmail.com",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListTile(
                title: Text("Edit Profile"),
                trailing: Icon(
                  Icons.chevron_right,
                  size: 24.0,
                ),
                onTap: () => Get.to(EditProfileView()),
              ),
              Divider(),
              ListTile(
                title: Text("Change Password"),
                trailing: Icon(
                  Icons.chevron_right,
                  size: 24.0,
                ),
              ),
              Divider(),
              ListTile(
                  title: Text("FAQ"),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 24.0,
                  ),
                  onTap: () => Get.to(FaqView())),
              Divider(),
              ListTile(
                title: Text("Privacy Policy"),
                trailing: Icon(
                  Icons.chevron_right,
                  size: 24.0,
                ),
                onTap: () => Get.to(PrivacyPoilicyView()),
              ),
              Divider(),
              ListTile(
                title: Text("Tem of Service"),
                trailing: Icon(
                  Icons.chevron_right,
                  size: 24.0,
                ),
                onTap: () => Get.to(TemOfServiceView()),
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  size: 24.0,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
