import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:al_dalala/1_home/Carousel.dart';

import '../templates/post_templates.dart';


class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  post_templates _post_templates = post_templates();
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
                  itemCount: 1,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, pos){
                    return
                      Center(
                        child: Column(
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
    );
  }


}
