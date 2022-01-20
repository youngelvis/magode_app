// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../components/colors.dart' as color;

class SignUpSuccessful extends StatefulWidget {
  const SignUpSuccessful({Key? key}) : super(key: key);

  @override
  _SignUpSuccessfulState createState() => _SignUpSuccessfulState();
}

class _SignUpSuccessfulState extends State<SignUpSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: color.AppColor.homePageBackground,
        padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(Icons.arrow_back, size: 40),
                SizedBox(
                  width: 90,
                ),
                Text(
                  "Signup Successful",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
           const Text(
                'your signup was successful. You will be notiffied by admin once your credentials have been verified.',
                style: TextStyle(
                  fontSize: 19,
                ),),
                const SizedBox(
              height: 30,
            ),
            const Text('Thank you,',
            style: TextStyle(
              fontSize: 18
            ),),
            const SizedBox(
              height: 30,
            ),
            const Text('MRA IT',
             style: TextStyle(
              fontSize: 18
            ),),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: RaisedButton(
                  color: color.AppColor.homePageTheme,
                  child: Text(
                    'Return to App Home Page',
                    style: TextStyle(
                        color: color.AppColor.homePageBackground, fontSize: 20),
                  ),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomAppBar(
          color: color.AppColor.homeSecondaryTheme,
          child: Icon(
            Icons.drag_handle,
            color: color.AppColor.homePageBackground,
            size: 50,
          ),
        ),
      ),
    );
  }
}
