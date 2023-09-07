import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cart_grid_controller.dart';

class CartGridView extends StatefulWidget {
  CartGridView({Key? key}) : super(key: key);

  Widget build(context, CartGridController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("CartGrid"),
        elevation: 0.0,
        centerTitle: true,
        actions: [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.grey[300]!,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.blueGrey[900],
                    ),
                    suffixIcon: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.sort,
                        color: Colors.blueGrey[900],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.0 / 1.4,
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemCount: controller.products.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = controller.products[index];
                    item["qty"] ?? 0;
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    item["photo"],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    6.0,
                                  ),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 6.0,
                                    top: 8.0,
                                    child: CircleAvatar(
                                      radius: 14.0,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 14.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            item["product_name"],
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            item["category"],
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "\$${item["price"]}",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
                    );
                  },
                ),
              ],
            ),
          ),
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
                "\$344.01",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: QActionButton(
                label: "CHeckout",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<CartGridView> createState() => CartGridController();
}
