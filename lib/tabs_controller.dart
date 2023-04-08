import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nistab/constants/color_consts.dart';
import 'package:nistab/screens/all_courses.dart';
import 'package:nistab/screens/profile.dart';
import 'package:nistab/screens/table.dart';

class TabsCtrl extends StatefulWidget {
  const TabsCtrl({Key? key}) : super(key: key);

  @override
  State<TabsCtrl> createState() => _TabsCtrlState();
}

class _TabsCtrlState extends State<TabsCtrl> {
  int index = 0;
  int index2 = 0;
  final screens = [
    TableData(),
    Courses(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: screens[index2],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: ColorConst.green,
        ),
        child: NavigationBar(
          onDestinationSelected: (i) {
            if (i == 2) {
              setState(() {
                index = i;
                index2 = 1;
              });
            }
            else if (i == 0) {
              setState(() {
                index = i;
                index2 = 0;
              });
            }
            else {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => Profile()
              );
            }
          },
          selectedIndex: index,
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.article_outlined), label: "My page"),
            NavigationDestination(
                icon: Icon(Icons.account_circle_outlined), label: "Profile"),
            NavigationDestination(
                icon: Icon(CupertinoIcons.plus_square), label: "Courses"),
          ],
        ),
      ),
    );
  }
}
