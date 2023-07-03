import 'package:bizarc_ventures/Pages/TotalStock.dart';
import 'package:flutter/material.dart';

class StockTodey extends StatefulWidget {
  const StockTodey({super.key});

  @override
  State<StockTodey> createState() => _StockTodeyState();
}

class _StockTodeyState extends State<StockTodey> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TotalStock();
                  },
                ),
              );
            },
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green.shade200,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 50, top: 10),
                    child: Text("Available Stock"),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "400",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: 40,
                              height: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: new AssetImage(
                                      "assets/images/Vector.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "100",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: 35,
                              height: 60,
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
                                "100",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: 30,
                              height: 55,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: new AssetImage(
                                      "assets/images/VectorRe.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "50",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 10),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return TotalStock();
                },
              ),
            ),
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green.shade200,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 50, top: 10),
                    child: Text("Empty Stock"),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "350",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: 40,
                              height: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: new AssetImage(
                                      "assets/images/Vector.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "100",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: 35,
                              height: 60,
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
                                "100",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: 30,
                              height: 55,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: new AssetImage(
                                      "assets/images/VectorRe.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "50",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
