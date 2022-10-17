import 'package:flutter/material.dart';

class creat_account extends StatefulWidget {
  const creat_account({Key? key}) : super(key: key);

  @override
  State<creat_account> createState() => _creat_accountState();
}

class _creat_accountState extends State<creat_account> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Icon(Icons.arrow_back_ios_new, ) ,
          backgroundColor: Colors.grey,
        ),

        body:
      SafeArea(
        child:
              Container(
          alignment: Alignment.topRight,
          padding: EdgeInsets.fromLTRB(70, 30, 70, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("إنشاء حساب جديد",
                style: TextStyle( fontSize: 31,  ),) ,
              Text("اهلا بك",
                style: TextStyle( fontSize: 31,),) ,

              TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  labelText: 'الاسم',
                  labelStyle: TextStyle(

                  ),
                  border: OutlineInputBorder(
                  ),
                ),
              ),

              SizedBox(height: 17,),

              TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  labelText: 'رقم الهاتف',
                  labelStyle: TextStyle(

                  ),
                  border: OutlineInputBorder(
                  ),
                ),
              ),

              SizedBox(height: 17,),

              TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  labelText: 'كلمة المرور',
                  labelStyle: TextStyle(

                  ),
                  border: OutlineInputBorder(
                  ),
                ),
              ),

              SizedBox(height: 17,),

              TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  labelText: 'تأكيد كلمة المرور',
                  labelStyle: TextStyle(

                  ),
                  border: OutlineInputBorder(
                  ),
                ),
              ),

              Transform.translate(
                offset: const Offset(19, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: CheckboxListTile(
                    title: const Text("     الموافقة على سياسة التطبيق",style: TextStyle( color:  Colors.black,)),
                    controlAffinity: ListTileControlAffinity.trailing,
                    activeColor: Colors.white,
                    checkColor: Colors.blueGrey,
                    value: check,
                    onChanged:  (value){
                      setState(() {
                        check=value!;
                      });
                    },
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                        },
                        child: Text("أنشئ حسابي"),
                      ) ,
                      SizedBox(height: 7,),
                      Text("لديك حساب بالفعل؟", style: TextStyle(fontSize: 19),),
                      Text("تسجيل الدخول" , style: TextStyle( fontSize: 19,
                          decoration: TextDecoration.underline, color: Colors.blue ),),

                    ],
                  )

                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
