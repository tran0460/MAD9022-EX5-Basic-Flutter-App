import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Son Tran',
        style: TextStyle(
          color: Colors.red,
          fontSize: 40,
        ),
      ),
    );
  }
}
