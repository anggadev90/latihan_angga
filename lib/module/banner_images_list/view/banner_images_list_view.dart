import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/banner_image_service/banner_image_service.dart';
import '../controller/banner_images_list_controller.dart';

class BannerImagesListView extends StatefulWidget {
  BannerImagesListView({Key? key}) : super(key: key);

  Widget build(context, BannerImagesListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("BannerImagesList"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.banner.length,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.banner[index];
                  return Card(
                    child: ListTile(
                      onTap: () async {
                        await Get.to(BannerImageFormView(
                          item: item,
                        ));
                        await controller.getBanner();
                      },
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          item["photo"].toString(),
                        ),
                      ),
                      title: Text(
                        item["banner_name"].toString(),
                      ),
                      trailing: IconButton(
                        onPressed: () => controller.deletBanner(item["id"]),
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
          await Get.to(BannerImageFormView());
          await controller.getBanner();
          //
        },
      ),
    );
  }

  @override
  State<BannerImagesListView> createState() => BannerImagesListController();
}
