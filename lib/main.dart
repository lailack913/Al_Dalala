import 'package:al_dalala/0_welcoming/a_splash%20screen/splash.dart';
import 'package:al_dalala/0_welcoming/b_first%20time%20open/first_time.dart';
import 'package:al_dalala/1_home/home_page.dart';
import 'package:al_dalala/2_account/a_sign%20in/account_type.dart';
import 'package:al_dalala/2_account/a_sign%20in/creat_account.dart';
import 'package:al_dalala/2_account/b_login/login.dart';
import 'package:al_dalala/2_account/c_restoration/restor_PN.dart';
import 'package:al_dalala/2_account/c_restoration/restor_new_password.dart';
import 'package:al_dalala/5_saved/saved.dart';
import 'package:al_dalala/6_dashboard/add_property/Details.dart';
import 'package:al_dalala/6_dashboard/add_property/view_residential.dart';
import 'package:al_dalala/6_dashboard/payment/payment_type.dart';
import 'package:al_dalala/6_dashboard/payment/set_subscribe.dart';
import 'package:al_dalala/BottomNavigationBar/BottomNavigationBar.dart';
import 'package:flutter/material.dart';

import '4_filter/filter.dart';
import '6_dashboard/add_property/form_building.dart';

void main() {


  runApp( MaterialApp(home: set_subscribe(),));

}
