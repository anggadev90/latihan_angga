import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/order_list1_controller.dart';

class OrderList1View extends StatefulWidget {
  OrderList1View({Key? key}) : super(key: key);

  Widget build(context, OrderList1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("OrderList1"),
        actions: [],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20.0),
        itemCount: controller.order.length,
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.order[index];
          return Card(
            child: ListTile(
              title: Text(
                item["name"],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "${item["time"]}",
              ),
              trailing: Text(
                "${item["price"]}",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  State<OrderList1View> createState() => OrderList1Controller();
}
