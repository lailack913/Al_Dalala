import 'package:flutter/material.dart';

class form_building extends StatefulWidget {
  const form_building({Key? key}) : super(key: key);

  @override
  State<form_building> createState() => _form_buildingState();
}

class _form_buildingState extends State<form_building> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.withOpacity(0.010),
          elevation: 1,
          leading: GestureDetector(
              onTap: ()
              {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 20,)),
          actions: [
            SizedBox(width: 5,),
            Center(
              child: Text("اضافة عقار - مبنى",style: TextStyle(color: Colors.black,fontSize: 25),),
            ),
            SizedBox(width: 5,),
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(":هل تود",style: TextStyle(color: Colors.black,fontSize: 22,),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Row(
                    children: [
                      button(
                          "التاجير"
                      ),
                      SizedBox(width: 20,),
                      button(
                          "البيع"
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text(":نوع المبنى",style: TextStyle(color: Colors.black,fontSize: 22,),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Row(
                    children: [
                      button(
                          "تجاري"
                      ),
                      SizedBox(width: 20,),
                      button(
                          "سكني"
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text("3",style: TextStyle(color: Colors.black,fontSize: 20,),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text(":عدد الطوابق",style: TextStyle(color: Colors.black,fontSize: 22,),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                          child: Icon(Icons.add,color: Colors.black,size: 20,)
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("اضافة الصورة الرئيسية",style: TextStyle(color: Colors.black,fontSize: 22,),),
                  ],
                ),
                SizedBox(height: 20,),
                Text(":اضافة صور للملحق",style: TextStyle(color: Colors.black,fontSize: 22,),),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    height: 55,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.add,size: 20,color: Colors.black,),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("معلومات اخرى",style: TextStyle(color: Colors.black,fontSize: 22,),),
                SizedBox(height: 20,),
                Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixText: 'ادخل المعلومات',

                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Center(
                  child: GestureDetector(
                    onTap: ()
                    {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => form_building()));
                    },
                    child: Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("معاينة",style: TextStyle(fontSize: 20,color: Colors.white),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
  GestureDetector button (Textname){
    return GestureDetector(
      onTap: ()
      {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => form_building()));
      },
      child: Container(
        height: 60,
        width: 180,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
            child: Text(Textname,style: TextStyle(fontSize: 22,color: Colors.white),)
        ),
      ),
    );
  }
}
