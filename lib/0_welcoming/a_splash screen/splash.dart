import 'package:al_dalala/1_home/home_page.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  Future Delay() async{
    await Future.delayed( const Duration(seconds: 3));
    Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
  }
  @override
  void initState(){
    super.initState();
    Delay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body:
      Container(
        height: 73, width: 73,
        color: Colors.white70,
      ),
    );
  }
}
