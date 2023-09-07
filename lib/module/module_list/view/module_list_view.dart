import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/module_list_controller.dart';

class ModuleListView extends StatefulWidget {
  ModuleListView({Key? key}) : super(key: key);

  Widget build(context, ModuleListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("ModuleList"),
        actions: [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 2,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: controller.mouduleListService.menuItems.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.mouduleListService.menuItems[index];
                  return InkWell(
                    onTap: () => Get.to(item["view"]),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            item["label"],
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
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
  State<ModuleListView> createState() => ModuleListController();
}
