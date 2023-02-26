import 'package:flutter/material.dart';

import '../models/menuitems.dart';



class MenuItemsGenerate {
  static const payment = MenuItems('Home', Icons.home);
  static const dashboard = MenuItems('Dashboard', Icons.dashboard);
  // static const aboutus =  MenuItems('About us', Icons.people);
  static const partners =  MenuItems('Partners and job', Icons.nature_people_outlined);
  static const feedback =  MenuItems('Feedback', Icons.people);

  static const all = <MenuItems>[
    payment,
    dashboard,
    // aboutus,
    partners,
    feedback,
  ];
}

class MenuScreen extends StatefulWidget {
  final MenuItems currentItem;
  final ValueChanged<MenuItems> onSelectedItem;

  const MenuScreen(
      {Key? key, required this.currentItem, required this.onSelectedItem})
      : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
              child: Column(children: <Widget>[
            Spacer(),
            ...MenuItemsGenerate.all.map(buildMenuItem).toList(),
            Spacer(flex: 2),
          ]))),
    );
  }

  Widget buildMenuItem(MenuItems item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selectedTileColor: Colors.black26,
          selected: widget.currentItem == item,
          minLeadingWidth: 20,
          leading: Icon(item.icon),
          title: Text(item.title),
          onTap: () => widget.onSelectedItem(item),
        ),
      );
}
