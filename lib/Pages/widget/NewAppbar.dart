import 'package:bizarc_ventures/Pages/UsersDropdown.dart';
import 'package:flutter/material.dart';

class NewAppBar extends StatefulWidget {
  const NewAppBar({super.key});

  @override
  State<NewAppBar> createState() => _NewAppBarState();
}

class _NewAppBarState extends State<NewAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(20),
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
    );
  }
}
