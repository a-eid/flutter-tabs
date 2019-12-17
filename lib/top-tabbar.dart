import 'package:flutter/material.dart';

class TabbarHeader extends StatelessWidget {
  final String text;
  final IconData iconData;
  const TabbarHeader({this.iconData, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(iconData),
        Padding(padding: EdgeInsets.symmetric(vertical: 4), child: Text(text))
      ],
    );
  }
}

var tabs = [
  [
    TabbarHeader(
      iconData: Icons.access_time,
      text: 'Access Time',
    ),
    Icon(Icons.ac_unit)
  ],
  [
    TabbarHeader(
      iconData: Icons.nature,
      text: 'nature',
    ),
    Icon(Icons.ac_unit)
  ],
  [
    TabbarHeader(
      iconData: Icons.assignment_late,
      text: 'assignment',
    ),
    Icon(Icons.ac_unit)
  ],
];

class TopTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TopTabs"),
          bottom: TabBar(
            tabs: tabs.map((tab) => tab[0]).toList(),
          ),
        ),
        body: TabBarView(
          children: tabs.map((tab) => tab[1]).toList(),
        ),
      ),
    );
  }
}
