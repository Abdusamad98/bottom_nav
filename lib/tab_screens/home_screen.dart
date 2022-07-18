import 'package:bottom_nav/widgets/my_selectable_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen"),
      ),
      body: Center(
          child: Column(
        children: [
          CupertinoSwitch(
            value: isSelected,
            onChanged: (bool value) {
              setState(() {
                isSelected = value;
              });
              print(value);
            },
          ),
          Switch(
            value: isSelected,
            focusColor: Colors.red,
            activeColor: Colors.yellowAccent,
            trackColor: MaterialStateProperty.all(Colors.black),
            hoverColor: Colors.pink,
            onChanged: (bool value) {
              setState(() {
                isSelected = value;
              });
              print(value);
            },
          ),
          MySelectableItem(
              isSelected: true,
              onChanged: (value) {
                print(value);
              })
        ],
      )),
    );
  }
}
