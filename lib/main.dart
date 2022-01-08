import 'package:flutter/material.dart';
import 'package:magode_app/pay_bills.dart';

import 'package:magode_app/xtra_clean.dart';

// import 'about_magodo.dart';
// import 'do_and_dont.dart';
// import 'emergency_service.dart';

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
      home: Paybills(),
    );
  }
}


