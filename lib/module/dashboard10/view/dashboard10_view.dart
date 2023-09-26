import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../controller/dashboard10_controller.dart';

class Dashboard10View extends StatefulWidget {
  Dashboard10View({Key? key}) : super(key: key);

  Widget build(context, Dashboard10Controller controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 18.0,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Good morning,",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Sarah",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Today",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 18.0,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      MdiIcons.plus,
                      color: Colors.white,
                      size: 18.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 180.0,
                child: ListView.builder(
                  itemCount: controller.items.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = controller.items[index];
                    return Container(
                      margin: EdgeInsets.only(
                        right: 20.0,
                      ),
                      padding: EdgeInsets.all(10.0),
                      height: 180.0,
                      width: 150,
                      decoration: BoxDecoration(
                        color: item["color"],
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["title"],
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[200],
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "${item["amount"]}",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[200],
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Builder(
                                builder: (context) {
                                  final List<Map> chartData = [
                                    {
                                      "year": 2018,
                                      "sales": 40,
                                    },
                                    {
                                      "year": 2019,
                                      "sales": 90,
                                    },
                                    {
                                      "year": 2020,
                                      "sales": 30,
                                    },
                                    {
                                      "year": 2021,
                                      "sales": 80,
                                    },
                                    {
                                      "year": 2022,
                                      "sales": 90,
                                    }
                                  ];
                                  return Container(
                                    width: 150.0,
                                    height: 100.0,
                                    color: item["color"],
                                    padding: EdgeInsets.all(12.0),
                                    child: SfCartesianChart(
                                      primaryXAxis: NumericAxis(
                                        isVisible: false,
                                      ),
                                      primaryYAxis: NumericAxis(
                                        isVisible: false,
                                      ),
                                      plotAreaBorderColor: Colors.transparent,
                                      margin: EdgeInsets.all(0.0),
                                      series: <ChartSeries>[
                                        SplineSeries<Map, int>(
                                          color: Colors.white,
                                          dataSource: chartData,
                                          xValueMapper: (Map data, _) =>
                                              data["year"],
                                          yValueMapper: (Map data, _) =>
                                              data["sales"],
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Learn",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://images.unsplash.com/photo-1628052225617-7fa2efacd978?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1527&q=80",
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
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 100.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Which funds",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "should I invest in?",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Expanded(
                            child: Text(
                              "20 Desc 2020",
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1.0),
                            height: 16.0,
                            width: 28.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                            ),
                            child: Text(
                              "blog",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   height: 100.0,
              //   width: MediaQuery.of(context).size.width,
              //   decoration: BoxDecoration(
              //     color: Colors.orange,
              //     borderRadius: BorderRadius.all(
              //       Radius.circular(
              //         8.0,
              //       ),
              //     ),
              //   ),
              //   child: Container(
              //     child: Stack(
              //       children: [
              //         Positioned(
              //           top: 10.0,
              //           bottom: 10.0,
              //           right: 200.0,
              //           left: 15.0,
              //           child: Container(
              //             decoration: BoxDecoration(
              //               image: DecorationImage(
              //                 image: NetworkImage(
              //                   "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
              //                 ),
              //                 fit: BoxFit.cover,
              //               ),
              //               borderRadius: BorderRadius.all(
              //                 Radius.circular(
              //                   8.0,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Dashboard10View> createState() => Dashboard10Controller();
}
