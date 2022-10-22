// read me pls
// PN is for phone number
import 'package:flutter/material.dart';

class restor_pn extends StatefulWidget {
  const restor_pn({Key? key}) : super(key: key);

  @override
  State<restor_pn> createState() => _restor_pnState();
}

class _restor_pnState extends State<restor_pn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Icon(
            Icons.arrow_back_ios_new,
          ),
          backgroundColor: Colors.grey,
        ),
        body: SafeArea(
          child: Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.fromLTRB(70, 70, 70, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "إٍسترجاع الحساب",
                  style: TextStyle(
                    fontSize: 31,
                  ),
                ),
                Text(
                  "يرجى ادخال رقم الهاتف لاسترجاع الحساب",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    labelText: 'رقم الهاتف',
                    labelStyle: TextStyle(),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Text(
                  "سيتم ارسال رمز تاكيد الى رقم الهاتف المدخل لاسترجاع الحساب لذا يرجى التأكد من كتابته بشكل صحيح",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  height: 19,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "التالي",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
