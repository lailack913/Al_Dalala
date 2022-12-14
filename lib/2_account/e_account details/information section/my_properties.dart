import 'package:flutter/material.dart';
import '../../../templates/post_templates.dart';

class my_properties extends StatefulWidget {
  const my_properties({Key? key}) : super(key: key);

  @override
  State<my_properties> createState() => _my_propertiesState();
}

class _my_propertiesState extends State<my_properties> {
  post_templates _post_templates = post_templates();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(
          Icons.arrow_back_ios_new,
        ),
        backgroundColor: Colors.grey,
      ),
      body:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
            )
          ],
        ),
      ),
    );;
  }
}
