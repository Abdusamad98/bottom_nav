import 'package:bottom_nav/tab_screens/home_screen.dart';
import 'package:bottom_nav/tab_screens/profile_screen.dart';
import 'package:bottom_nav/tab_screens/search_screen.dart';
import 'package:flutter/material.dart';

class TabBox extends StatefulWidget {
  const TabBox({Key? key}) : super(key: key);

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        iconSize: 34,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          print(index);
        },
        currentIndex: currentIndex,
        // showSelectedLabels: true,
        // showUnselectedLabels: false,
        //selectedFontSize: 20,
        selectedLabelStyle: TextStyle(color: Colors.yellowAccent),
        //unselectedLabelStyle: TextStyle(color: Colors.yellowAccent),
        items: [
          getItem(icon: Icons.home, labelText: "Home"),
          getItem(icon: Icons.search, labelText: ""),
          getItem(icon: Icons.perm_identity_rounded, labelText: "Profile")
        ],
      ),
    );
  }

  BottomNavigationBarItem getItem(
      {required IconData icon, required String labelText}) {
    return BottomNavigationBarItem(
        label: labelText,
        icon: Icon(icon),
        activeIcon: Icon(
          icon,
          color: Colors.yellow,
        ));
  }
}
