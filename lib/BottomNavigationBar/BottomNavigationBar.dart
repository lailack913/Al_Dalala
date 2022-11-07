import 'package:al_dalala/6_dashboard/payment/payment_type.dart';
import 'package:flutter/material.dart';
import 'package:al_dalala/1_home/home_page.dart';

class bottomN extends StatefulWidget {

  @override
  State<bottomN> createState() => _bottomNState();
}

class _bottomNState extends State<bottomN> {

  var cureenrIndex = 3;

  Widget callPage(){

    return _widgetOptions[cureenrIndex];

  }

  static List<Widget> _widgetOptions = <Widget>[

    Center(child: Text("account"),),
    payment_type(),
    Center(child: Text("save"),),
    home_page(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.teal,
            icon: Icon(Icons.account_circle_rounded),
            label: 'account',
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
            backgroundColor: Colors.teal,
            icon: Icon(Icons.home),
            label: 'home',
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
