import 'package:al_dalala/6_dashboard/add_property/view_residential.dart';
import 'package:flutter/material.dart';

 class post_templates   {
// make a function to build the posts of residential

   static post_residential(var context,String main_img,String residential_type,
       String sell_rent, String city,String district,
       int area, double price, String price_type,
       int room,int hall, int kitchen,int bathroom,
       bool garden, bool carage, String owner, String owner_phone,
       String property_describtion, b property_state,
       double post_height, double photo_hight
       )
   {
     return  GestureDetector(
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
         Navigator.of(context).
         push(MaterialPageRoute(builder: (context) => view_residetial(
             residential_type2: residential_type,
             sell_rent2: sell_rent,
             city2: city,
             district2: district,
             area2: area,
             price2: price,
             price_type2: price_type,
             room2: room,
             hall2: hall,
             kitchen2: kitchen,
             bathroom2: bathroom,
             garden2: garden, carage2: carage,
             owner2: owner, owner_phone2: owner_phone,
             property_describtion2: property_describtion,
             property_state2: property_state,
         )));
       },
     );


   }

  // make a function to build the posts of land
  static post_land(String main_img,String type,
      String city,String district,
      int area, double price, String price_type,
      double post_height, double photo_hight
      )
  {

    return Container(
      height: post_height,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(19))
      ),
      child: Column(
        children: [
          // img
          Stack(
            children: [
              Container(
                  height: photo_hight,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        image: NetworkImage("$main_img",),
                        //  image: NetworkImage("https://media.architecturaldigest.com/photos/57c7003fdc03716f7c8289dd/master/pass/IMG%20Worlds%20of%20Adventure%20-%201.jpg",),
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

          // land type & area
          Padding(padding: EdgeInsets.fromLTRB(17, 13, 17, 0),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("المساحة:$area م", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),),
                Text("ارض-$type", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),)
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
              children: [
                Icon(Icons.arrow_back_ios_new),
                Text("المزيد ", style: TextStyle(fontSize: 21.3, fontWeight: FontWeight.w500),),
              ],
            ),
          )
        ],
      ),
    );
  }

// make a function to build the posts of buildings

  static post_buildings(String main_img,String type, String sell_rent,
      String city,String district,
      int area, double price,String price_type, int floors,
      double post_height, double photo_hight
      )
  {
    return Container(
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
                        image: NetworkImage("https://media.architecturaldigest.com/photos/57c7003fdc03716f7c8289dd/master/pass/IMG%20Worlds%20of%20Adventure%20-%201.jpg",),
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
                Text("مبنى-$type-$sell_rent", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),)
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios_new),
                    Text("المزيد ", style: TextStyle(fontSize: 21.3, fontWeight: FontWeight.w500),),
                  ],
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
                      Text("طابق"),
                      Text("$floors"),
                      Icon(Icons.cabin, size: 17,)
                    ],
                  ),
                ),
              ],
            ),
          )


        ],
      ),
    );
  }

  static post_store(String main_img,String type, String sell_rent,
      String city,String district,
      int area, double price,String price_type,
      double post_height, double photo_hight
      )
  {
    return Container(
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
                Text("$type-$sell_rent", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),)
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
              children: [
                Icon(Icons.arrow_back_ios_new),
                Text("المزيد ", style: TextStyle(fontSize: 21.3, fontWeight: FontWeight.w500),),
              ],
            ),
          )


        ],
      ),
    );

  }


}
