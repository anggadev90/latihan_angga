import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/blog_controller.dart';

class BlogView extends StatefulWidget {
  BlogView({Key? key}) : super(key: key);

  Widget build(context, BlogController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Blog"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.blogs.length,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.blogs[index];
                  return Card(
                    child: InkWell(
                      onTap: () async {
                        await Get.to(BlogFormView(
                          item: item,
                        ));
                        await controller.getBlogs();
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            item["cover_image"].toString(),
                          ),
                        ),
                        title: Text(item["tittle"].toString()),
                        subtitle: Text(item["body"].toString()),
                        trailing: IconButton(
                          onPressed: () => controller.deleteProduct(item["id"]),
                          icon: const Icon(
                            Icons.delete,
                            size: 24.0,
                          ),
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
          await Get.to(BlogFormView());
          await controller.getBlogs();
          //
        },
      ),
    );
  }

  @override
  State<BlogView> createState() => BlogController();
}
