import 'package:flutter/material.dart';

import 'colors.dart' as color;

class XtraCleanPage extends StatelessWidget {
  const XtraCleanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: color.AppColor.homePageBackground,
          padding: const EdgeInsets.only(
            top: 60,
          ),
          child: Column(children: [
            Row(
              children: const [
                Icon(Icons.arrow_back, size: 40),
                SizedBox(
                  width: 150,
                ),
                Text(
                  'Xtra-Clean',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 210,
              decoration: BoxDecoration(
                color: color.AppColor.homePageTheme,
              ),
            ),
            Expanded(
              child: Container(
                padding:
                          const EdgeInsets.only(top: 15,),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.green[600]),
                child: OverflowBox(
                  child: SingleChildScrollView(
                    child: Container(
                      padding:
                          const EdgeInsets.only(top: 20, left: 30, right: 30),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 17,
                            ),
                            Text(
                              """
At Xtra-Clean our focus is to provide an impeccable cleaning service with minimal disruption to our environment. You can be sure to expect professionalism, efficiency and exceptional results from each and every job.""",
                              style: TextStyle(
                                  color: color.AppColor.homePageBackground
                                      .withOpacity(0.8),
                                  fontSize: 21,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 5, bottom: 5, left: 2, right: 3),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: color.AppColor.homePageBackground
                                    .withOpacity(0.4),
                                width: 2,
                              )),
                              child: Text(
                                "Please pay to any Access or Polaris bank",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: color.AppColor.homePageBackground,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Access Bank Plc',
                              style: TextStyle(
                                  color: color.AppColor.homePageBackground,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text('Account name: Xtra Clean Services Ltd',
                                style: TextStyle(
                                    color: color.AppColor.homePageBackground
                                        .withOpacity(0.8),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700)),
                            Text('Account number: 0103635629',
                                style: TextStyle(
                                    color: color.AppColor.homePageBackground
                                        .withOpacity(0.8),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700)),
                            Text("—————",
                                style: TextStyle(
                                    color: color.AppColor.homePageBackground
                                        .withOpacity(0.8),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700)),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Polaris Bank',
                              style: TextStyle(
                                  color: color.AppColor.homePageBackground,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Account name: Xtra clean service ltd',
                              style: TextStyle(
                                  color: color.AppColor.homePageBackground
                                      .withOpacity(0.8),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Account number: 4010003212',
                              style: TextStyle(
                                  color: color.AppColor.homePageBackground
                                      .withOpacity(0.8),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone_iphone,
                                  color: color.AppColor.homePageBackground
                                      .withOpacity(0.8),
                                  size: 25,
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  " xtra-clean Enquries",
                                  style: TextStyle(
                                      color: color.AppColor.homePageBackground
                                          .withOpacity(0.8),
                                      fontSize: 23,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              """Dear ccustomer, please call Xtra-Clean Service
Limited on 08099222225, 08023139173, 080XRACLEAN or LAWMA Response Centre (LRC) on the following numbers: 018538601, 8177878, 8757563, 8739736.
""",
                              style: TextStyle(
                                color: color.AppColor.homePageBackground
                                    .withOpacity(0.8),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: Container(
          height: 80,
          child: BottomAppBar(
            child: Icon(
              Icons.home,
              color: color.AppColor.homePageTheme,
            ),
          ),
        ));
  }
}
