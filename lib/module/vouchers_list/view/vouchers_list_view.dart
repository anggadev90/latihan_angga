import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/vouchers_list_controller.dart';

class VouchersListView extends StatefulWidget {
  VouchersListView({Key? key}) : super(key: key);

  Widget build(context, VouchersListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("VouchersList"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.vouchers.length,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.vouchers[index];
                  return Card(
                    child: ListTile(
                      onTap: () async {
                        await Get.to(VouchersFormView(
                          item: item,
                        ));
                        await controller.getVoucher();
                      },
                      title: Text(item["voucher_name"].toString()),
                      subtitle: Text(item["voucher_discount"].toString()),
                      trailing: IconButton(
                        onPressed: () => controller.deleteVouchers(item["id"]),
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
          await Get.to(VouchersFormView());
          await controller.getVoucher();
          //
        },
      ),
    );
  }

  @override
  State<VouchersListView> createState() => VouchersListController();
}
