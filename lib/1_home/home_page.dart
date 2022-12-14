import 'dart:convert';

import 'package:al_dalala/templates/other_templates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:al_dalala/1_home/Carousel.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart';

import '../2_account/e_account details/information section/account_info.dart';
import '../templates/post_templates.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);



  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  post_templates _post_templates = post_templates();
  var litems = ["1","2","Third","4"];
  var sororrentitems=[];
  var typebuilditems = [];
  var floornumbitems = [];
  var kichenitems = [];
  var spaceitems = [];
  var interacetitems = [];
  var priceitems=[];
  var locationitems=[];
  Future getData() async{
    var url=Uri.parse("http://localhost:4000");
    Response response= await get(url);

    String body =response.body;

    List<dynamic> list1=json.decode(body);
    List<dynamic> list2=json.decode(body);

    print(list1);
    litems.clear();  //to not print the items in litems just print value in mySql colum(name ,phone,..)
    //items.clear();
    for (int i=0; i<list1.length; i++){
      litems.add(list1[i]["sale_or_rent"]);
      sororrentitems.add(list1[i]["type_build"]);
      typebuilditems.add(list1[i]["floor_number"]);
      floornumbitems.add(list1[i]["room_number"]);
      kichenitems.add(list1[i]["kichen"]);
      spaceitems.add(list1[i]["space"]);
      interacetitems.add(list1[i]["interace"]);
      priceitems.add(list1[i]["price"]);
      locationitems.add(list1[i]["location"]);

      setState(() {

      });
    }

    print(list1);//to print my databace in run

  }
  void initState(){
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://images.pexels.com/photos/208736/pexels-photo-208736.jpeg?auto=compress&cs=tinysrgb&w=600'
          'https://images.pexels.com/photos/208736/pexels-photo-208736.jpeg?auto=compress&cs=tinysrgb&w=600'
          'https://images.pexels.com/photos/208736/pexels-photo-208736.jpeg?auto=compress&cs=tinysrgb&w=600'
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade50,
                            offset: Offset(0,6),
                            blurRadius: 6,
                            spreadRadius: 3
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      IconButton(
                        icon: Icon(Icons.account_circle_outlined,size: 43, ),
                        onPressed: (){
                          Navigator.of(context).
                          push(MaterialPageRoute(builder: (context) => account_info()));
                        },
                      ),

                      IconButton(
                          icon: Icon(CupertinoIcons.question_circle,size: 39,),
                          onPressed: (){

                          },
                      )
                    ],
                  )
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all()
                      ),
                      child:  Icon(Icons.search),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                        child: SizedBox(
                            height: 50,
                            child:  Directionality(textDirection: TextDirection.rtl, child: TextFormField(

                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(20),
                                  filled: false,
                                  border: InputBorder.none,
                                  hintText: "?????? ???? ",
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  )
                              ),
                            ),)
                        )),
                  ],
                ),
              ),

              CarouselWithDotsPage(imgList: imgList),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 11, 23, 11),
                    child: Text(
                      "??????????????",
                      style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                width: other_templates.width(context)/1.07,
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: ( context, pos){
                      return
                        Column(
                          children: [
                            post_templates.post_residential(context,
                                "https://media.architecturaldigest.com/photos/57c7003fdc03716f7c8289dd/master/pass/IMG%20Worlds%20of%20Adventure%20-%201.jpg",
                                "??????????", "??????", "??????????", "????????????", 150, 12, "?????????? ??.??",1, 2, 3, 4, true, false, "???????? ?????????? ????????????", "07700000", "property_describtion",true,
                              MediaQuery.of(context).size.height/2.9, MediaQuery.of(context).size.height/5.3,),

                            SizedBox(height: MediaQuery.of(context).size.height/17,),

                            post_templates.post_land("https://media.architecturaldigest.com/photos/57c7003fdc03716f7c8289dd/master/pass/IMG%20Worlds%20of%20Adventure%20-%201.jpg",
                                "????????", "??????????", "????????????????", 300, 120, "?????????? ??.??",
                                MediaQuery.of(context).size.height/2.9, MediaQuery.of(context).size.height/5.3),

                            SizedBox(height: MediaQuery.of(context).size.height/17,),

                            post_templates.post_store("https://media.architecturaldigest.com/photos/57c7003fdc03716f7c8289dd/master/pass/IMG%20Worlds%20of%20Adventure%20-%201.jpg",
                                "???????? ??????????", "??????", "????????????", "???????? ????????????", 100, 30, "?????????? ??.??",
                                MediaQuery.of(context).size.height/2.9, MediaQuery.of(context).size.height/5.3),

                            SizedBox(height: MediaQuery.of(context).size.height/17,),

                            post_templates.post_buildings("https://media.architecturaldigest.com/photos/57c7003fdc03716f7c8289dd/master/pass/IMG%20Worlds%20of%20Adventure%20-%201.jpg",
                                "??????????", "??????????", "????????????", "??????????????", 370, 2.7,"?????????? ??.??", 3,
                                MediaQuery.of(context).size.height/2.9, MediaQuery.of(context).size.height/5.3),

                            SizedBox(height: MediaQuery.of(context).size.height/17,),


                          ],
                        );
                    }),
              ),

             Container(
               width: other_templates.width(context),
               child: Column(

               ),
             )
            ],
          ),
        ),
      )
    );
  }
}
