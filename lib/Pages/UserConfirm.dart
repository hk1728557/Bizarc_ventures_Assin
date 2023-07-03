import 'package:bizarc_ventures/Pages/widget/BottomNavBar.dart';
import 'package:bizarc_ventures/Pages/widget/DataChart.dart';
import 'package:bizarc_ventures/Pages/widget/NewAppbar.dart';
import 'package:flutter/material.dart';

class UserDashBoard extends StatefulWidget {
  const UserDashBoard({super.key});

  @override
  State<UserDashBoard> createState() => _UserDashBoardState();
}

class _UserDashBoardState extends State<UserDashBoard> {
  final List<ChartData> chartData1 = [
    ChartData('Orange', 150, Colors.orange),
    ChartData('Red', 70, Colors.red.shade900),
    ChartData('Indigo', 175, Colors.indigo.shade900),
  ];
  final List<ChartData> chartData2 = [
    ChartData('Orange', 80, Colors.orange),
    ChartData('Red', 50, Colors.red.shade900),
    ChartData('Indigo', 100, Colors.indigo.shade900),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        flexibleSpace: NewAppBar(),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Text(
                "Are You Confirm ?",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
              Container(
                margin: EdgeInsets.symmetric(vertical: 40),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.green.shade100,
                    Colors.orange,
                    // Colors.yellowAccent
                  ]),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 180,
                            height: 180,
                            child: DataChart(
                              chartList: chartData1,
                              weight: 400,
                              availability: 'Avallable',
                            ),
                          ),
                          Container(
                            width: 180,
                            height: 180,
                            child: DataChart(
                                chartList: chartData2,
                                weight: 250,
                                availability: 'Empty'),
                          ),
                        ],
                      ),
                    ),
                    weightBox(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.pink.shade50,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.pink.shade800,
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Edit",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.green.shade800,
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Send OTP",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Container weightBox() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Container(
                height: 15,
                width: 15,
                color: Colors.indigo[900],
              ),
              SizedBox(width: 5),
              Text(
                "19Kg",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 15,
                width: 15,
                color: Colors.red[900],
              ),
              SizedBox(width: 5),
              Text(
                "14.2Kg",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 15,
                width: 15,
                color: Colors.orange[900],
              ),
              SizedBox(width: 5),
              Text(
                "Others",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}

