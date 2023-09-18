import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/order_list4_controller.dart';

class OrderList4View extends StatefulWidget {
  OrderList4View({Key? key}) : super(key: key);

  Widget build(context, OrderList4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("OrderList4"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              ListView.builder(
                itemCount: controller.order.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.order[index];
                  return Container(
                    margin: const EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["name"],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${item["time"]}",
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "${item["price"]}",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              item["status"],
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.green,
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
    );
  }

  @override
  State<OrderList4View> createState() => OrderList4Controller();
}
