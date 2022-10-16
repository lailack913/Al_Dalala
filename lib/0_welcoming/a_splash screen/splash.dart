import 'package:flutter/material.dart';
class hi extends StatefulWidget {
  const hi({Key? key}) : super(key: key);

  @override
  State<hi> createState() => _hiState();
}

class _hiState extends State<hi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
