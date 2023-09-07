import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/product_list_controller.dart';

class ProductListView extends StatefulWidget {
  ProductListView({Key? key}) : super(key: key);

  Widget build(context, ProductListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("ProductList"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.products[index];
                  return Card(
                    child: ListTile(
                      onTap: () async {
                        await Get.to(ProductFormView(
                          item: item,
                        ));
                        await controller.getProduct();
                      },
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["photo"] ??
                              "https://i.ibb.co/S32HNjD/no-image.jpg",
                        ),
                      ),
                      title: Text(item["product_name"]),
                      subtitle: Text("${item["price"]}"),
                      trailing: IconButton(
                        onPressed: () => controller.deleteProduct(
                          item["id"],
                        ),
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
          await Get.to(ProductFormView());
          await controller.getProduct();
          //
        },
      ),
    );
  }

  @override
  State<ProductListView> createState() => ProductListController();
}
