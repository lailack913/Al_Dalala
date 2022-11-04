import 'package:al_dalala/templates/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../templates/post_templates.dart';

class fliter extends StatefulWidget {

  @override
  State<fliter> createState() => _fliterState();
}

class _fliterState extends State<fliter> {
  bool frent = false;
  bool fbuy = false;
  bool house = false;
  bool department = false;
  bool vila = false;
  bool mushtamal = false;
  bool residential_land = false;
  bool agrarian_land = false;
  bool residential_building = false;
  bool commercial_building = false;
  bool store = false;

  post_templates _post_templates = post_templates();

  @override
  Widget build(BuildContext context) {
    final bc = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors:  [Color(0x23494A), Colors.white,],
    );
    return Scaffold(

      appBar: AppBar(
        title: Icon(
          Icons.arrow_back_ios_new,
        ),
        backgroundColor: Colors.grey,
      ),
      body:
      SingleChildScrollView(
        child:
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF23494A), Color(0xFFBFFFC7),] ,

            ),
          ),
          child:  Column(
            children: [
              SafeArea(
                child:
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: button.filter(height()/11, width()/2.7,35, "استئجار", frent,),
                    onTap: () {setState(() { frent=!frent;});
                    },
                  ),

                  GestureDetector(
                    child: button.filter(height()/11, width()/2.7,35, "شراء", fbuy,),
                    onTap: () {setState(() { fbuy=!fbuy;});
                    },
                  ),
                ],
              ),
              SizedBox(height: 13,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: button.filter(height()/11.5, width()/5.7,27, "متجر", house,),
                    onTap: () {setState(() { house=!house;});
                    },
                  ),
                  GestureDetector(
                    child: button.filter(height()/11.5, width()/5.7,27, "فيلا", house,),
                    onTap: () {setState(() { house=!house;});
                    },
                  ),
                  GestureDetector(
                    child: button.filter(height()/11.5, width()/5.7,23, "مشتمل", mushtamal,),
                    onTap: () {setState(() { mushtamal=!mushtamal;});
                    },
                  ),
                  GestureDetector(
                    child: button.filter(height()/11.5, width()/5.7,27, "شقة", department,),
                    onTap: () {setState(() { department=!department;});
                    },
                  ),
                  GestureDetector(
                    child: button.filter(height()/11.5, width()/5.7,27, "بيت", house,),
                    onTap: () {setState(() { house=!house;});
                    },
                  ),
                ],
              ),
              SizedBox(height: 13,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: button.filter(height()/7.9, width()/4.7,27, "مبنى  تجاري  ", commercial_building,),
                    onTap: () {setState(() { commercial_building=!commercial_building;});
                    },
                  ),
                  GestureDetector(
                    child: button.filter(height()/7.9, width()/4.7,27, "مبنى  سكني  ", residential_building,),
                    onTap: () {setState(() { residential_building=!residential_building;});
                    },
                  ),
                  GestureDetector(
                    child: button.filter(height()/7.9, width()/4.7,27, "ارض  زراعية  ", agrarian_land,),
                    onTap: () {setState(() { agrarian_land=!agrarian_land;});
                    },
                  ),
                  GestureDetector(
                    child: button.filter(height()/7.9, width()/4.7,27, "ارض  سكنية  ", residential_land,),
                    onTap: () {setState(() { residential_land=!residential_land;});
                    },
                  ),


                ],
              ),

              Container(
                padding: EdgeInsets.only(top: 17),
                width: MediaQuery.of(context).size.width/1.05,
                alignment: Alignment.center,
                child: ListView.builder(
                    itemCount: 1,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, pos){
                      return
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
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
                          ),
                        );
                    }),
              )
            ],
          ),
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

}
