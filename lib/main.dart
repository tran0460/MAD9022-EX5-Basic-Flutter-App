import 'package:flutter/material.dart';
import 'package:flutter_nav_starter/nav.dart';

//screens
// import 'package:flutter_nav_starter/screens/first_screen.dart'
// import 'package:flutter_nav_starter/screens/second_screen.dart'
// import 'package:flutter_nav_starter/screens/third_screen.dart'

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = <Widget>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Home Screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
      drawer: NavDrawer(
          currentIndex: currentIndex,
          onTapped: (i) {
            print(i);
            setState(() => currentIndex = i);
          }),
    );
  }
}
