import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Card(
            shadowColor: Colors.red,
            elevation: 6,
            child: Container(
              child: Column(
                children: [
                  Image(
                    height: 300,
                    fit: BoxFit.contain,
                    image: AssetImage('images/dog-1.jpg'),
                  ),
                  Text('A very cute dog')
                ],
              ),
            ),
          ),
          Card(
            shadowColor: Colors.amberAccent,
            elevation: 6,
            child: Container(
              child: Column(
                children: [
                  Image(
                    height: 300,
                    fit: BoxFit.contain,
                    image: AssetImage('images/dog-2.jpg'),
                  ),
                  Text('Another very cute dog')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
