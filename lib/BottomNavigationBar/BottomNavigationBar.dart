import 'package:flutter/material.dart';
import 'package:al_dalala/1_home/home_page.dart';

class bottomN extends StatefulWidget {

  @override
  State<bottomN> createState() => _bottomNState();
}

class _bottomNState extends State<bottomN> {

  var cureenrIndex = 0;

  Widget callPage(){

    return _widgetOptions[cureenrIndex];

  }

  static List<Widget> _widgetOptions = <Widget>[
    home_page(),
    Center(child: Text("add"),),
    Center(child: Text("save"),),
    Center(child: Text("account"),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.teal,
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmarks_outlined),
            label: 'save',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'account',
          ),
        ],
        onTap: (v){
          setState(() {
            cureenrIndex = v;
          });
        },
      ),
      body: callPage(),
    );
  }
}
