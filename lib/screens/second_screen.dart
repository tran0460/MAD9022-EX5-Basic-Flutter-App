import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView(children: [
        for (int i = 0; i < 3; i++)
          ListTile(
            leading: Text('$i',
                style: TextStyle(
                  color: Colors.red,
                )),
            title: Text('List Tile Item',
                style: TextStyle(
                  color: Colors.red,
                )),
          ),
      ]),
    );
  }
}
