import 'package:al_dalala/templates/other_templates.dart';
import 'package:flutter/material.dart';

import '../templates/post_templates.dart';

class saved extends StatefulWidget {
  const saved({Key? key}) : super(key: key);

  @override
  State<saved> createState() => _savedState();
}

class _savedState extends State<saved> {
  post_templates _post_templates = post_templates();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),

      body:
       SafeArea(
         child:
         SingleChildScrollView(
           child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Padding(
                     padding: EdgeInsets.fromLTRB(0, 17, 23, 13),
                     child: Text(
                       "العقارات المحفوظة",
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
                 width: other_templates.width(context),
                 alignment: Alignment.center,
                 child:   Container(
                   width: MediaQuery.of(context).size.width/1.07,
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

                                 post_templates.post_residential(context,
                                   "https://media.architecturaldigest.com/photos/57c7003fdc03716f7c8289dd/master/pass/IMG%20Worlds%20of%20Adventure%20-%201.jpg",
                                   "مشتمل", "بيع", "بغداد", "الدورة", 150, 12, "مليون د.ع",1, 2, 3, 4, true, false, "مكتب النور للعقار", "07700000", "property_describtion", true,
                                   MediaQuery.of(context).size.height/2.9, MediaQuery.of(context).size.height/5.3,),

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
                 ),
               ),
             ],
           ),
         ),
       )
    );
  }
}
