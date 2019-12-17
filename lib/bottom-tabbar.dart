import 'package:flutter/material.dart';

class BottomTabs extends StatefulWidget {
  @override
  _BottomTabsState createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Tabs")),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.cyan,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.nature),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            title: Container(),
          )
        ],
      ),
    );
  }
}
