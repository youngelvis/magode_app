// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:magode_app/unordered_list.dart';
import 'colors.dart' as color;

class RulesPage extends StatelessWidget {
  const RulesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: color.AppColor.homePageBackground,
        padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.arrow_back, size: 40),
                SizedBox(
                  width: 90,
                ),
                Text(
                  "Do's and Don't",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 230,
              decoration: BoxDecoration(
                color: color.AppColor.homePageTheme,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
                child: Column(
              children: [
                UnorderedList(
                  const [
                    "No conversion of residential property to commercial use",
                    "No parking of vehicles on the road overnight",
                    "No washing of vehicles on the streets",
                    "Strictly no parking on the arterial roads",
                    "No placement of refuse bins/refuse bags on the walkways",
                    "Placement of posters/banners are not allowed",
                    "Abandoned vehicles will be towed",
                    "Parking on the median is prohibited",
                    "Noise pollution of any kind is prohibited, i.e. blasting of horns",
                    "Repair of vehicles on the road is prohibited",
                    "Learner driving not allowed",
                    "Display of vehicles for sale is prohibited in the estate",
                    "Construction sites must be vacated by 6pm"
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: BottomAppBar(
          child: Icon(
            Icons.home,
            color: color.AppColor.homePageTheme,
          ),
        ),
      ),
    );
  }
}
