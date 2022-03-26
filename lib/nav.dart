import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  NavDrawer({Key? key, required this.currentIndex, required this.onTapped})
      : super(key: key);

  int currentIndex;
  final Function(int) onTapped;
  final labels = <String>[
    'Home',
    'Second',
    'Third',
  ];
  final icons = <IconData>[
    Icons.home,
    Icons.access_time,
    Icons.account_balance_sharp,
  ];

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'My nav drawer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
              ),
            ),
          ),
          for (var i = 0; i < widget.labels.length; i++)
            ListTile(
              leading: Icon(
                widget.icons[i],
                color: i != widget.currentIndex ? Colors.blue : Colors.red,
              ),
              title: Text(
                widget.labels[i],
                style: i != widget.currentIndex
                    ? TextStyle(color: Colors.blue)
                    : TextStyle(color: Colors.red),
              ),
              onTap: () {
                print('tapped $i');
                widget.onTapped(i);
                //drawer needs to be removed from history
                Navigator.of(context).pop();
              },
            ),
        ],
      ),
    );
  }
}
