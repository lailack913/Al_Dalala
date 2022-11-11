import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
class view_residetial extends StatefulWidget {

  final String  residential_type2;
  final  String sell_rent2;
  final String  city2;
  final String  district2;
  final int area2;
  final double price2;
  final String price_type2;
  final  int room2;
  final int hall2;
  final int kitchen2;
  final int bathroom2;
  final bool garden2;
  final bool carage2;
  final String owner2;
  final String owner_phone2;
  final String property_describtion2;
   bool property_state2;



  view_residetial ({

    required this.residential_type2,
    required this.sell_rent2,
    required this.city2,
    required this.district2,
    required this.area2,
    required this.price2,
    required this.price_type2,
    required this.room2,
    required this.hall2,
    required this.kitchen2,
    required this.bathroom2,
    required this.garden2,
    required this.carage2,
    required this.owner2,
    required this.owner_phone2,
    required this.property_describtion2,
    required this.property_state2,

  });

  @override
  State<view_residetial> createState() => _view_residetialState();
}

class _view_residetialState extends State<view_residetial> {
  bool _hasCallSupport = false;
  Future<void>? _launched;
  String _phone = '';
  @override
  void initState() {
    super.initState();
    // Check for phone call support.
    canLaunchUrl(Uri(scheme: 'tel', path: '123')).then((bool result) {
      setState(() {
        _hasCallSupport = result;
      });
    });
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    // onPressed calls using this URL are not gated on a 'canLaunch' check
    // because the assumption is that every device can launch a web URL.
    final Uri toLaunch =
    Uri(scheme: 'https', host: 'www.google.org', path: 'headers/');
    return Scaffold(
      body:
        SafeArea(
          child: Container(
            child: ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      height: height()/3.3,
                      color: Colors.grey,
                    ),
                    Positioned(
                      top: 6,
                      right: 10,
                      child: Container(
                          padding: EdgeInsets.only(left: 0),
                          width: width()/9,
                          height: height()/13,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(13),
                              boxShadow: []),
                          child: Icon(
                            Icons.bookmark_border,
                            color: Colors.grey,
                            size: 30,
                          )),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 33, 37, 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(widget.residential_type2+"-"+widget.sell_rent2,style: TextStyle(fontSize: 27),),
                      Text(widget.city2+"-"+widget.district2,style: TextStyle(fontSize: 27),),
                      Text(" السعر: ${widget.price2}"+widget.price_type2,style: TextStyle(fontSize: 27),),
                      Text("المساحة: ${widget.area2} م²", style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.end,
                        children: [
                          Text("النزال: ${widget.area2} م ", style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),),
                          SizedBox(width: width()/20,),
                          Text("الواجهة: ${widget.area2} م ", style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 13,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    rooms("حمام", widget.bathroom2, Icon(Icons.account_balance_wallet_outlined, size: 30,)),
                    rooms("غرف", widget.room2, Icon(Icons.account_balance_wallet_outlined, size: 30,)),

                  ],
                ),
                SizedBox(height: 13,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    rooms("مطبخ", widget.kitchen2, Icon(Icons.account_balance_wallet_outlined, size: 30,)),
                    rooms("صالة", widget.hall2, Icon(Icons.account_balance_wallet_outlined, size: 30,)),
                  ],
                ),

                Padding(padding:EdgeInsets.fromLTRB(0, 17, 37, 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text("حديقة", style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),),
                          SizedBox(width: width()/20,),
                          Icon( widget.garden2 ?  Icons.check:Icons.close,),
                        ],
                      ),
                      SizedBox(width: width()/5,),
                      Row(
                        children: [
                          Text("كراج", style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),),
                          SizedBox(width: width()/20,),
                          Icon( widget.carage2 ?  Icons.check:Icons.close,),
                        ],
                      ),
                    ],
                  ),
                ),
                Container( height: 7, color: Colors.grey.shade300,),
                Padding(padding: EdgeInsets.fromLTRB(0, 17, 37, 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Link(
                      uri: Uri.parse(
                          'https://pub.dev/documentation/url_launcher/latest/link/link-library.html'),
                      target: LinkTarget.blank,
                      builder: (BuildContext ctx, FollowLink? openLink) {
                        return TextButton.icon(
                          onPressed: () => setState(() {
                            _launched = _launchInBrowser(toLaunch);
                          }),
                          label: const Text('رابط الموقع',style: TextStyle(fontSize:27),),
                          icon: const Icon(Icons.read_more,color: Colors.white,),
                        );
                      },
                    ),
                    Padding(padding: EdgeInsets.all(16.0)),
                    FutureBuilder<void>(future: _launched, builder: _launchStatus),
                  ],
                ),
                ),
                Container( height: 7, color: Colors.grey.shade300,),
                    Padding(padding: EdgeInsets.fromLTRB(0, 17, 37, 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(":معلومات اخرى",style: TextStyle(fontSize:27),),
                          Text(" معلومات اخرى معلومات اخرى معلومات اخرى معلومات اخرى:معلومات اخرى",style: TextStyle(fontSize:17),textAlign: TextAlign.right ,)
                        ],
                      ),
                    ),
                Container( height: 7, color: Colors.grey.shade300,),
                Padding(padding: EdgeInsets.fromLTRB(0, 17, 37, 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("ًالمالك: "+widget.owner2,style: TextStyle(fontSize:27),),
                      Text("رقم الهاتف: "+widget.owner_phone2,style: TextStyle(fontSize:27),),

                    ],
                  ),
                ),
                Container(
                  height: height()/11,
                  child: ElevatedButton(
                    child: Text("حجز",style: TextStyle(fontSize: 29),) ,
                    onPressed: (){
                      widget.property_state2 = ! widget.property_state2;
                    } ,

                  ),
                )

              ],
            )
          ),
        )
    );
  }
  rooms(String  type, int number, Icon icona
      ){
    return Container(
      height: height()/11,
      width: width()/2.35,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(11))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("$type",style: TextStyle(fontSize: 30),),
          Text("$number",style: TextStyle(fontSize: 30),),
          icona,
        ],
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
