import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/product_categories_service/product_categories_service.dart';
import '../controller/product_categories_list_controller.dart';

class ProductCategoriesListView extends StatefulWidget {
  ProductCategoriesListView({Key? key}) : super(key: key);

  Widget build(context, ProductCategoriesListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("ProductCategoriesList"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.product.length,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.product[index];
                  return Card(
                    child: ListTile(
                      onTap: () async {
                        await Get.to(ProductCategoriesFormView(
                          item: item,
                        ));
                        await controller.getProduct();
                      },
                      title: Text(item["category_name"].toString()),
                      subtitle: Text("Programmer"),
                      trailing: IconButton(
                        onPressed: () => controller.deleteProduct(item["id"]),
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
          await Get.to(ProductCategoriesFormView());
          await controller.getProduct();
          //
        },
      ),
    );
  }

  @override
  State<ProductCategoriesListView> createState() =>
      ProductCategoriesListController();
}
