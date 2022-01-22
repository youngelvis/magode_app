import 'package:flutter/material.dart';
import 'package:magode_app/forms/Identify_newly_Registered_members.dart';
import 'package:magode_app/forms/add_family.dart';
import 'package:magode_app/forms/add_new_admin_user.dart';
import 'package:magode_app/forms/add_staff.dart';
import 'package:magode_app/forms/authorize_user.dart';
import 'package:magode_app/forms/change_password.dart';
import 'package:magode_app/forms/edit_profile.dart';
import 'package:magode_app/forms/find_a_zone.dart';
import 'package:magode_app/forms/forgot_password.dart';
import 'package:magode_app/forms/generate_passcode.dart';
import 'package:magode_app/forms/login_page.dart';
import 'package:magode_app/forms/pay_bills.dart';
// import 'package:magode_app/pay_bills.dart';
import 'package:magode_app/forms/pay_dues.dart';
import 'package:magode_app/forms/signup_page.dart';
import 'package:magode_app/forms/update_members_info.dart';
import 'package:magode_app/forms/verify_new_staff.dart';
import 'package:magode_app/normal_pages/sign_up_successful_page.dart';
import 'package:magode_app/profile_navs/profile_1.dart';
import 'package:magode_app/profile_navs/profile_2.dart';
import 'package:magode_app/reports_pages/reports_1.dart';
import 'package:magode_app/reports_pages/reports_2.dart';

// import 'package:magode_app/xtra_clean.dart';

// import 'about_magodo.dart';
// import 'do_and_dont.dart';
 //import 'emergency_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const Report_2(),
    );
  }
}


