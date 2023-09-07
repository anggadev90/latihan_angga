import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/suppliers_list_controller.dart';

class SuppliersListView extends StatefulWidget {
  SuppliersListView({Key? key}) : super(key: key);

  Widget build(context, SuppliersListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("SuppliersList"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
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
                        await Get.to(SuppliersFormView(
                          item: item,
                        ));
                        await controller.getProduct();
                      },
                      title: Text(item["suppliers_name"].toString()),
                      subtitle: Text(item["email"].toString()),
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
          await Get.to(SuppliersFormView());
          await controller.getProduct();
          //
          //
        },
      ),
    );
  }

  @override
  State<SuppliersListView> createState() => SuppliersListController();
}
