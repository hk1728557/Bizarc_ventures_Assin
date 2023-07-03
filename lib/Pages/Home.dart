import 'package:bizarc_ventures/Pages/UsersDropdown.dart';
import 'package:bizarc_ventures/Pages/widget/DataChart.dart';
import 'package:bizarc_ventures/Pages/widget/BottomNavBar.dart';
import 'package:bizarc_ventures/Pages/widget/MissingContainer.dart';
import 'package:bizarc_ventures/Pages/widget/StockToday.dart';
import 'package:bizarc_ventures/Pages/widget/StockYesterday.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var user_NameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(colors: [Colors.orange, Colors.amber]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                          ),
                          SizedBox(width: 2),
                          Text(
                            "04:30:26",
                            // style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Container(
                      // margin: EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/userIcon.png"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Mohammad iqbal sazid"),
                          InkWell(
                            child: Icon(Icons.arrow_drop_down),
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return UsersDropdown();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
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
              // progressBox(context),
              Container(
                child: Text(
                  "Today",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              StockTodey(),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Testerday",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              StockYesterday(),
              MissingContainer(),
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
