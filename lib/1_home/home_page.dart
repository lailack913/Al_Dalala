import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:al_dalala/1_home/Carousel.dart';
import 'package:http/http.dart';

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
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
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.teal,
                    ),
                    IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell,size: 30,))
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
                                hintText: "بحث عن ",
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
            Padding(
              padding: EdgeInsets.only(top: 10,right: 22),
              child: Text(
                "المعروض",
                style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),



            Container(
              width: MediaQuery.of(context).size.width/1.05,
              child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: ( context, pos){
                    return
                      Column(
                        children: [
                          post_templates.post_residential("https://media.architecturaldigest.com/photos/57c7003fdc03716f7c8289dd/master/pass/IMG%20Worlds%20of%20Adventure%20-%201.jpg",
                              "مشتمل", "بيع", "بغداد", "الدورة", 150, 12, "مليون د.ع",
                              1, 2, 3, 4,
                              MediaQuery.of(context).size.height/2.9, MediaQuery.of(context).size.height/5.3),

                          SizedBox(height: MediaQuery.of(context).size.height/17,),

                          post_templates.post_land("https://media.architecturaldigest.com/photos/57c7003fdc03716f7c8289dd/master/pass/IMG%20Worlds%20of%20Adventure%20-%201.jpg",
                              "سكية", "بغداد", "العامرية", 300, 120, "مليون د.ع",
                              MediaQuery.of(context).size.height/2.9, MediaQuery.of(context).size.height/5.3),

                          SizedBox(height: MediaQuery.of(context).size.height/17,),

                          post_templates.post_store("https://media.architecturaldigest.com/photos/57c7003fdc03716f7c8289dd/master/pass/IMG%20Worlds%20of%20Adventure%20-%201.jpg",
                              "متجر احذية", "بيع", "البصرة", "شارع اجزائر", 100, 30, "مليون د.ع",
                              MediaQuery.of(context).size.height/2.9, MediaQuery.of(context).size.height/5.3),

                          SizedBox(height: MediaQuery.of(context).size.height/17,),

                          post_templates.post_buildings("https://media.architecturaldigest.com/photos/57c7003fdc03716f7c8289dd/master/pass/IMG%20Worlds%20of%20Adventure%20-%201.jpg",
                              "تجاري", "للبيع", "البصرة", "الجزائر", 370, 2.7,"مليار د.ع", 3,
                              MediaQuery.of(context).size.height/2.9, MediaQuery.of(context).size.height/5.3),

                          SizedBox(height: MediaQuery.of(context).size.height/17,),


                        ],
                      );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget  cccc (){
    return Padding(padding: EdgeInsets.all(35),
      child: Container(
        height: 430,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(15),),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/208736/pexels-photo-208736.jpeg?auto=compress&cs=tinysrgb&w=600",
                ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 25,left: 25,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("السعر:1,200,000",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        ),
                        Text("بيت",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("مساحة : 150 م.م",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("واجية : 10",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(

                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 0.3,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("اضغط المزيد",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment(0.8, 0.1),
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 0.3,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text("صالة : 2",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),),
                      ),
                      Container(
                        alignment: Alignment(0.8, 0.1),
                        width: 65,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 0.3,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text("مطبخ : 1",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),),
                      ),
                      Container(
                        alignment: Alignment(0.8, 0.1),
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 0.3,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text("غرف نوم : 4",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),),
                      ),
                    ],
                  ),

                ],
              ),

            ),

          ],
        ),
      ),
    );
  }
}
