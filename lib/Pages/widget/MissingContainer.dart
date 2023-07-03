import 'package:flutter/material.dart';

class MissingContainer extends StatefulWidget {
  const MissingContainer({super.key});

  @override
  State<MissingContainer> createState() => _MissingContainerState();
}

class _MissingContainerState extends State<MissingContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 110.0,
            height: 110.0,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius:const BorderRadius.all(Radius.circular(100.0)),
              border: Border.all(
                color: Colors.green.shade200,
                width: 2.0,
              ),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "0",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "  Missing \n Avallable",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            width: 70,
            height: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        color: Colors.indigo.shade900,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "19Kg",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      color: Colors.yellow.shade400,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "14.2Kg",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      color: Colors.orange.shade700,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "Other",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: 110.0,
            height: 110.0,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(Radius.circular(100.0)),
              border: Border.all(
                color: Colors.green.shade200,
                width: 2.0,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "0",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Text(
                    "  Missing \n \t\t\tEmpty",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
