import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/order_list3_controller.dart';

class OrderList3View extends StatefulWidget {
  OrderList3View({Key? key}) : super(key: key);

  Widget build(context, OrderList3Controller controller) {
    controller.view = this;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Pending",
              ),
              Tab(
                text: "Ongoing",
              ),
              Tab(
                text: "Done",
              ),
            ],
          ),
          title: Text('Order List'),
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(20.0),
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
                title: Text(item["name"]),
                subtitle: Text("${item["time"]}"),
                trailing: Text("${item["price"]}"),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  State<OrderList3View> createState() => OrderList3Controller();
}
