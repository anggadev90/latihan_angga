import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/users_controller.dart';

class UsersView extends StatefulWidget {
  UsersView({Key? key}) : super(key: key);

  Widget build(context, UsersController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.users.length,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.users[index];
                  return Card(
                    child: ListTile(
                      onTap: () async {
                        await Get.to(UsersFormView(
                          item: item,
                        ));
                        await controller.getUsers();
                      },
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["photo"].toString(),
                        ),
                      ),
                      title: Text(item["full_name"].toString()),
                      subtitle: Text(item["email"].toString()),
                      trailing: IconButton(
                        onPressed: () => controller.deleteUSers(item["id"]),
                        icon: const Icon(
                          Icons.delete,
                          size: 24.0,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          await Get.to(UsersFormView());
          await controller.getUsers();
          //
        },
      ),
    );
  }

  @override
  State<UsersView> createState() => UsersController();
}
