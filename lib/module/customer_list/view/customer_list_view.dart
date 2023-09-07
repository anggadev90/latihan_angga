import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/customer_list_controller.dart';

class CustomerListView extends StatefulWidget {
  CustomerListView({Key? key}) : super(key: key);

  Widget build(context, CustomerListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("CustomerList"),
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
                        await Get.to(CustumerFormView(
                          item: item,
                        ));
                        await controller.getProducts();
                      },
                      title: Text(item["customer_name"]),
                      subtitle: Text(item["email"]),
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
        child: const Icon(Icons.add),
        onPressed: () async {
          await Get.to(CustumerFormView());
          await controller.getProducts();
        },
      ),
    );
  }

  @override
  State<CustomerListView> createState() => CustomerListController();
}
