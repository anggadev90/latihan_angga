import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cart_list_controller.dart';

class CartListView extends StatefulWidget {
  CartListView({Key? key}) : super(key: key);

  Widget build(context, CartListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("CartList"),
        centerTitle: true,
        elevation: 0.0,
        actions: [],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            H6(
              title: "ITEMS",
              subtitle: "Clear cart",
            ),
            SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
                  item["qty"] ??= 0;
                  return Container(
                    height: 96,
                    margin: const EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 96,
                          height: 96.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                item["photo"].toString(),
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["product_name"],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                item["category"],
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$${item["price"]}",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () => controller.decreaseQty(item),
                                    child: Icon(
                                      MdiIcons.minusBox,
                                      size: 24.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "${item["qty"]}",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => controller.increaseQty(item),
                                    child: Icon(
                                      MdiIcons.plusBox,
                                      size: 24.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 18.0,
                              backgroundColor: Colors.grey[300],
                              child: Icon(
                                Icons.favorite,
                                color: Colors.grey[900],
                                size: 18.0,
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 18.0,
                              backgroundColor: Colors.grey[300],
                              child: Icon(
                                Icons.delete,
                                color: Colors.grey[900],
                                size: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20.0),
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "\$${controller.total}",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: QActionButton(
                label: "Checkout",
                onPressed: () => controller.doCheckout(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<CartListView> createState() => CartListController();
}
