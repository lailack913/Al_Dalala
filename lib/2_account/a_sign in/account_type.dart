import 'package:al_dalala/1_home/home_page.dart';
import 'package:al_dalala/2_account/a_sign%20in/creat_account.dart';
import 'package:flutter/material.dart';

class account_type extends StatefulWidget {
  const account_type({Key? key}) : super(key: key);

  @override
  State<account_type> createState() => _account_typeState();
}

class _account_typeState extends State<account_type> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: ()
            {
              Navigator.of(context).pop;
            },
            child: Icon(Icons.arrow_back_ios,size: 22,color: Colors.green,)),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 35),
              child:Text("انشاء حساب جديد ",style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Text("اهلا بك ",style: TextStyle(fontSize:30,color: Colors.red,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("بتسجيلك الدخول انت توافق\n على الشروط و الاحكام ",style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Center(
              child: Text("هل تود تسجيل الدخول؟",style: TextStyle(fontSize: 22,color: Colors.red,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Row(
                    children: [
                      button(
                          "شركة"
                      ),
                      SizedBox(width: 20,),
                      button(
                          "شخص"
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Row(
                    children: [
                      button(
                          "او مكتب"
                      ),
                      SizedBox(width: 20,),
                      button(
                          "تاجر"
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  GestureDetector button (Textname){
    return GestureDetector(
      onTap: ()
      {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => creat_account()));
      },
      child: Container(
        height: 60,
        width: 180,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
            child: Text(Textname,style: TextStyle(fontSize: 22,color: Colors.white),)
        ),
      ),
    );
  }
}
