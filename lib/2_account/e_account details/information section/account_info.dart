import 'dart:ffi';

import 'package:al_dalala/2_account/c_restoration/restor_new_password.dart';
import 'package:al_dalala/2_account/e_account%20details/information%20section/change_account_info.dart';
import 'package:flutter/material.dart';

import '../../c_restoration/restor_PN.dart';

class account_info extends StatefulWidget {
  const account_info({Key? key}) : super(key: key);

  @override
  State<account_info> createState() => _account_infoState();
}

class _account_infoState extends State<account_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(
          Icons.arrow_back_ios_new,
        ),
        backgroundColor: Colors.grey,
      ),

      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              height: height()/3.5,
              width: width(),
              margin: EdgeInsets.fromLTRB( 0, 0, 37, height()/4),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("الاسم: مكتب حجي سلطان ", style: TextStyle(fontSize: 27,), textAlign: TextAlign.right,),
                  Text("رقم الهاتف: 07700000 ", style: TextStyle(fontSize: 27), textAlign: TextAlign.right,),
                  Text("تاريخ انتهاء الاشتراك: ('التاريخ مثلا 2022/11/15' او' لست مشتركا') ", style: TextStyle(fontSize: 27), textAlign: TextAlign.right,),
                ],
              )
          ),
          Container(
            color: Colors.grey,
            height: height()/9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: Text("تعديل المعلومات", style: TextStyle(fontSize: 27,), textAlign: TextAlign.right,),
                  onTap: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => change_account_info()));
                  },
                ),
                GestureDetector(
                  child: Text("تغيير كلمة السر", style: TextStyle(fontSize: 27,), textAlign: TextAlign.right,),
                  onTap: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => restor_pn(
                      title: "تغيير كلمة السر",
                      message: "يرجى ادخال رقم الهاتف لتغيير كلمة السر",
                      note:  "سيتم ارسال رمز تاكيد الى رقم الهاتف المدخل لتغيير كلمة السر لذا يرجى التأكد من كتابته بشكل صحيح",
                    )));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  height(){
    var height=MediaQuery.of(context).size.height;
    return height;
  }
  width(){
    var width=MediaQuery.of(context).size.width;
    return width;
  }
}
