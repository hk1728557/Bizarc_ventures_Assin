import 'package:bizarc_ventures/Pages/widget/BottomNavBar.dart';
import 'package:bizarc_ventures/Pages/widget/NewAppbar.dart';
import 'package:flutter/material.dart';

class UsersDropdown extends StatefulWidget {
  const UsersDropdown({super.key});

  @override
  State<UsersDropdown> createState() => _UsersDropdownState();
}

class _UsersDropdownState extends State<UsersDropdown> {
  int selectedUserindex = -1;

  final List<UserData> userData = [
    UserData("assets/images/Ellipse250.png", 'Anindit Panigrahi', 989456123),
    UserData("assets/images/Ellipse251.png", 'Mahammad Iqbal', 789456123),
    UserData("assets/images/Ellipse252.png", 'Anindit Prasad', 789456123),
    UserData("assets/images/userIcon.png", 'Tarini Prasad Sahu', 789456123),
    UserData("assets/images/Ellipse250.png", 'Pawan sharma', 98756123),
    UserData("assets/images/Ellipse252.png", 'Anand Pathak', 789445362),
    UserData("assets/images/Ellipse251.png", 'Tarini Iqbal', 787054326),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        flexibleSpace: NewAppBar(),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 400,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: ListView.builder(
          itemCount: userData.length,
          itemBuilder: (BuildContext context, int index) {
            UserData data = userData[index];
            bool isSelected = index == selectedUserindex;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedUserindex = index;
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                margin: EdgeInsets.fromLTRB(0, 15, 0, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade400,
                    width: 1,
                  ),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(data.Img.toString()),
                    radius: 40,
                  ),
                  title: Text(data.name),
                  subtitle: Text(data.moNumber.toString()),
                  trailing: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Colors.green.shade300
                          : Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class UserData {
  final String Img;
  final String name;
  final double moNumber;

  UserData(
    this.Img,
    this.name,
    this.moNumber,
  );
}
