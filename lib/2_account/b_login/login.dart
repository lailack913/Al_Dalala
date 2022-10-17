import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.arrow_back_ios_new, ) ,
        backgroundColor: Colors.grey,
      ),

      body:
        Container(
          alignment: Alignment.topRight,
          padding: EdgeInsets.all(73),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("تسجيل الدخول",
                style: TextStyle( fontSize: 31,  ),) ,
              Text("اهلا بعودتك",
                style: TextStyle( fontSize: 31,),) ,


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

              SizedBox(height: 30 ,),

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

              Row(
                children: [

                  Text("هل نسيت كلمة السر؟",
                  style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue ),),

                  Transform.translate(
                    offset: const Offset(37, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width/3,
                      child: CheckboxListTile(
                        title: const Text("تذكرني",style: TextStyle( color:  Colors.black,)),
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

                ],
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text("تسجيل الدخول"),
                  ) ,
                  SizedBox(height: 60,),
                  Text("ليس لديك حساب؟", style: TextStyle(fontSize: 19),),
                  Text("انشاء حساب" , style: TextStyle( fontSize: 19,
                      decoration: TextDecoration.underline, color: Colors.blue ),),

    ],
              )

            ],
          )
            ],
          ),
        )
    );
  }
}
