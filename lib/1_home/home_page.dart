import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:al_dalala/1_home/Carousel.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
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
              child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, pos){
                    return cccc();
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
                        Text(" السعر : 1,200,000 د.ع",
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
