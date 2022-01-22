import 'package:flutter/material.dart';
import '../components/colors.dart' as color;
class Report_1 extends StatelessWidget {
  const Report_1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  width: 110,
                ),
                Text(
                  'Reports',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                print('View Members Clicked');
              },
              child: const Text(
                'View Members',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                print('Members\' Staff Clicked');
              },
              child: const Text(
                'Members\' Staff',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                print('View Passcodes Clicked');
              },
              child: const Text(
                'View Passcodes',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                print('Movement Register Clicked');
              },
              child: const Text(
                'Movement Register',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                print('Activity Logs Clicked');
              },
              child: const Text(
                'Activity Logs',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomAppBar(
          color: color.AppColor.homeSecondaryTheme,
          child: Icon(
            Icons.home,
            color: color.AppColor.homePageTheme,
          ),
        ),
      ),
    );
  }
}