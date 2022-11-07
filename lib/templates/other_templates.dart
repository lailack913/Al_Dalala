import 'package:flutter/material.dart';

class other_templates{

  static choice_title_script( double height, double width,
      String title, String script,
      double title_size, double script_size ){
    return Container(
      height: height, width: width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 3)
      ),

      padding: EdgeInsets.all(11),

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("$title",style: TextStyle(fontSize: title_size),),
          Text("$script",
            style: TextStyle(fontSize: script_size), textAlign: TextAlign.right,)

        ],
      ),
    );
  }

  static property_choices( double height, double width,
      String title, String script,
      double title_size, double script_size ){
    return Container(
      height: height, width: width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 3),
          borderRadius: BorderRadius.circular(19)
      ),

      margin: EdgeInsets.only(top: 11),

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("$title",style: TextStyle(fontSize: title_size),),
          Text("$script",
            style: TextStyle(fontSize: script_size), textAlign: TextAlign.right,)

        ],
      ),
    );
  }

}