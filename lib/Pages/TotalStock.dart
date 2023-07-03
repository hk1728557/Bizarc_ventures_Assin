import 'package:bizarc_ventures/Pages/UserConfirm.dart';
import 'package:bizarc_ventures/Pages/widget/BottomNavBar.dart';
import 'package:bizarc_ventures/Pages/widget/DataChart.dart';
import 'package:bizarc_ventures/Pages/widget/NewAppbar.dart';
import 'package:flutter/material.dart';

class TotalStock extends StatefulWidget {
  const TotalStock({super.key});

  @override
  State<TotalStock> createState() => _TotalStockState();
}

class _TotalStockState extends State<TotalStock> {
  final List<ChartData> chartData1 = [
    ChartData('Orange', 150, Colors.orange),
    ChartData('Red', 70, Colors.red.shade900),
    ChartData('Indigo', 175, Colors.indigo.shade900),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        flexibleSpace: NewAppBar(),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Wellcome, Iqbal",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.green.shade100,
                    Colors.orange,
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
                          mainAxisAlignment: MainAxisAlignment.center,
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
                          ]),
                    ),
                    weightBox(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return UserDashBoard();
                        },
                      ),
                    ),
                    child: Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.indigo.shade200,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 80,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: new AssetImage(
                                              "assets/images/Vector.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "19",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              "kg",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            )
                                          ]),
                                    ),
                                    Container(
                                      child: Text(
                                        "175",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return UserDashBoard();
                        },
                      ),
                    ),
                    child: Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red.shade200,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 70,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: new AssetImage(
                                              "assets/images/VectorRe.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "14.2",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "70",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return UserDashBoard();
                    },
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.orange.shade200,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: new AssetImage(
                                          "assets/images/VectorOr.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "150",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
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
