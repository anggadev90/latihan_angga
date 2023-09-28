import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/dashboard11_controller.dart';

class Dashboard11View extends StatefulWidget {
  Dashboard11View({Key? key}) : super(key: key);

  Widget build(context, Dashboard11Controller controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.search,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.builder(
                itemCount: controller.chat.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.chat[index];

                  if (index % 2 == 0)
                    return Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1615109398623-88346a601842?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
                            ),
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      12.0,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  item["message"],
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "1 min ago",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey[600],
                                ),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  else
                    return Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      12.0,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  item["message"],
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "1 min ago",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey[600],
                                ),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80",
                            ),
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                        ],
                      ),
                    );

                  return Container(
                    margin: EdgeInsets.only(
                      bottom: 20.0,
                    ),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisAlignment: index % 2 != 0
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: Text(
                                item["message"],
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "1 min ago",
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.grey[600],
                              ),
                            ),
                            if (index % 2 != 0)
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[400],
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(12.0),
                                          ),
                                        ),
                                        child: Text(
                                          item["message"],
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        "1 min ago",
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
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
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(0.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 24,
              offset: Offset(0, 11),
            ),
          ],
          color: Colors.grey[300],
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Icon(
              Icons.emoji_emotions_outlined,
              size: 24.0,
            ),
            Expanded(
              child: TextFormField(
                initialValue: null,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  hintText: "World H|",
                  hintStyle: TextStyle(
                    color: Colors.grey[500],
                  ),
                  hoverColor: Colors.transparent,
                ),
                onFieldSubmitted: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                MdiIcons.attachment,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<Dashboard11View> createState() => Dashboard11Controller();
}
