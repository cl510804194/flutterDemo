import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/email_screen.dart';
import 'pages/airplay_screen.dart';
import 'pages/pages_screen.dart';

class BottonNavigationWidget extends StatefulWidget {
  BottonNavigationWidget({Key key}) : super(key: key);

  @override
  _BottonNavigationWidgetState createState() => _BottonNavigationWidgetState();
}

class _BottonNavigationWidgetState extends State<BottonNavigationWidget> {
  final _BottonNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();
  @override
  void initState() {
    // TODO: implement initState

    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirPlay());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _BottonNavigationColor),
              title: Text('Home',
                  style: TextStyle(color: _BottonNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(Icons.email, color: _BottonNavigationColor),
              title: Text('Email',
                  style: TextStyle(color: _BottonNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(Icons.pages, color: _BottonNavigationColor),
              title: Text('Pages',
                  style: TextStyle(color: _BottonNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplay, color: _BottonNavigationColor),
              title: Text('Airplay',
                  style: TextStyle(color: _BottonNavigationColor))),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
