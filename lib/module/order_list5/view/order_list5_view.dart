import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/order_list5_controller.dart';

class OrderList5View extends StatefulWidget {
  OrderList5View({Key? key}) : super(key: key);

  Widget build(context, OrderList5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("OrderList5"),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              "${item["tahun"]}",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            Text(
                              "${item["tanggal"]}",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${item["bulan"]}",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["order"],
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                              Text(
                                item["name"],
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${item["time"]}",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${item["price"]}",
                              style: TextStyle(
                                fontSize: 20.0,
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
  State<OrderList5View> createState() => OrderList5Controller();
}
