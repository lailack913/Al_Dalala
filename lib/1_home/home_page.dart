import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:al_dalala/1_home/Carousel.dart';
import 'package:http/http.dart';

import '../6_dashboard/add_property/view_residential.dart';
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
                         post_residential("https://media.architecturaldigest.com/photos/57c7003fdc03716f7c8289dd/master/pass/IMG%20Worlds%20of%20Adventure%20-%201.jpg",
                              "مشتمل", "بيع", "بغداد", "الدورة", 150, 12, "مليون د.ع",
                              1, 2, 3, 4,
                              MediaQuery.of(context).size.height/2.9, MediaQuery.of(context).size.height/5.3,
                              true, false, "مكتب النور", "07700000"," بلا  بلا  بلا  بلا  بلا  بلا  بلا  بلا  بلا  بلا  بلا  بلا  بلا  بلا ",
                           true
                         ),

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
  height(){
    var height;
    return height=MediaQuery.of(context).size.height;
  }
  width(){
    var width;
    return width=MediaQuery.of(context).size.width;
  }

   post_residential(String main_img,String residential_type,
      String sell_rent, String city,String district,
      int area, double price, String price_type,
      int room,int hall, int kitchen,int bathroom,
      double post_height, double photo_hight, bool garden, bool carage,
       String owner, String owner_phone, String property_describtion,
       bool property_state
      )
  {
    return GestureDetector(

      child: Container(
        height: post_height,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(19))
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: photo_hight,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                          image: NetworkImage("$main_img",),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.vertical(top: Radius.circular(17))
                    )
                ),
                Positioned(
                  top: 6,
                  right: 10,
                  child: Container(
                      padding: EdgeInsets.only(left: 0),
                      width: 39, height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                          ]
                      ),
                      child:
                      Icon( Icons.bookmark_border, color: Colors.grey, size: 30,)
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(17, 13, 17, 0),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("المساحة:$area م", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),),
                  Text("$residential_type-$sell_rent", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),)
                ],
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(17, 1, 17, 0),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("السعر: $price $price_type", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),),
                  Text("$city-$district", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(17, 1.5, 17, 0),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.arrow_back_ios_new),
                  Text("المزيد ", style: TextStyle(fontSize: 21.3, fontWeight: FontWeight.w500),),
                  Container(
                    height: 37, width: 65,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(11))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("حمام"),
                        Text("$bathroom"),
                        Icon(Icons.cabin, size: 17,)
                      ],
                    ),
                  ),
                  Container(
                    height: 37, width: 65,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(11))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("مطبخ"),
                        Text("$kitchen"),
                        Icon(Icons.cabin, size: 17,)
                      ],
                    ),
                  ),
                  Container(
                    height: 37, width: 65,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(11))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("صالة"),
                        Text("$hall"),
                        Icon(Icons.cabin, size: 17,)
                      ],
                    ),
                  ),
                  Container(
                    height: 37, width: 65,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(11))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("غرف"),
                        Text("$room"),
                        Icon(Icons.cabin, size: 17,)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      onTap: (){
        Navigator.of(context)
            .push(MaterialPageRoute(builder:(context) => view_residetial(
          residential_type2 : residential_type,
          sell_rent2 : sell_rent,
          city2 : city,
          district2 : district,
          area2 : area,
          price2: price,
          price_type2: price_type,
          room2: room,
          hall2: hall,
          kitchen2: kitchen,
          bathroom2: bathroom,
          garden2: garden,
          carage2: carage,
          owner2: owner,
          owner_phone2: owner_phone,
          property_describtion2: property_describtion,
          property_state2: property_state ,
        )
        )
        );
      },
    );


  }

}
