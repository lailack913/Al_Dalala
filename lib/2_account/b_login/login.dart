import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import '../../dataa.dart';
import '../../1_home/home_page.dart';
import '../a_sign in/creat_account.dart';


var phoneController = TextEditingController();
var passController = TextEditingController();

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool check = false;
  var litems = [];

  Future getData() async {
    var url = Uri.parse("http://localhost:4000");
    Response response = await get(url);
    String body = response.body;

    List<dynamic> list1 = json.decode(body);
    print(list1);
    litems.clear();
    for (int i = 0; i < list1.length; i++) {
      litems.add(list1[i]["fullname"]);
      litems.add(list1[i]["u_phone"]);
      litems.add(list1[i]["password"]);
      litems.add(list1[i]["password_confirm"]);

      setState(() {
        if (list1[i]["u_phone"] == u_phone &&
            list1[i]["password"] == password) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => home()));
        } else
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => creat_account()));
      });
    }

    // print(litems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Icon(
            Icons.arrow_back_ios_new,
          ),
          backgroundColor: Colors.grey,
        ),
        body: Container(
          alignment: Alignment.topRight,
          padding: EdgeInsets.all(73),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "تسجيل الدخول",
                style: TextStyle(
                  fontSize: 31,
                ),
              ),
              Text(
                "اهلا بعودتك",
                style: TextStyle(
                  fontSize: 31,
                ),
              ),
              TextField(
                controller: phoneController,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  labelText: 'رقم الهاتف',
                  labelStyle: TextStyle(),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: passController,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  labelText: 'كلمة المرور',
                  labelStyle: TextStyle(),
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                children: [
                  Text(
                    "هل نسيت كلمة السر؟",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue),
                  ),
                  Transform.translate(
                    offset: const Offset(37, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: CheckboxListTile(
                        title: const Text("تذكرني",
                            style: TextStyle(
                              color: Colors.black,
                            )),
                        controlAffinity: ListTileControlAffinity.trailing,
                        activeColor: Colors.white,
                        checkColor: Colors.blueGrey,
                        value: check,
                        onChanged: (value) {
                          setState(() {
                            check = value!;
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
                          setState(() {
                            u_phone = phoneController.text;
                            password = passController.text;
                          });
                          getData();
                        },
                        child: Text("تسجيل الدخول"),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        "ليس لديك حساب؟",
                        style: TextStyle(fontSize: 19),
                      ),
                      Text(
                        "انشاء حساب",
                        style: TextStyle(
                            fontSize: 19,
                            decoration: TextDecoration.underline,
                            color: Colors.blue),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
