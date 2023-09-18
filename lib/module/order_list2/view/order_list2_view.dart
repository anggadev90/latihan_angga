import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/order_list2_controller.dart';

class OrderList2View extends StatefulWidget {
  OrderList2View({Key? key}) : super(key: key);

  Widget build(context, OrderList2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("OrderList2"),
        actions: [],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: controller.order.length,
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.order[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/QrTHd59/woman.jpg",
                ),
              ),
              title: Text(
                item["name"],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("${item["time"]}"),
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
  State<OrderList2View> createState() => OrderList2Controller();
}
