import "package:flutter/material.dart";

import '../components/colors.dart' as color;

class EmergencyService extends StatelessWidget {
  const EmergencyService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: color.AppColor.homePageBackground,
          padding: const EdgeInsets.only(
            top: 60,
          ),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(Icons.arrow_back, size: 40),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    "Emergency page",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 30,
              // ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 210,
                decoration: BoxDecoration(
                  color: color.AppColor.homePageTheme,
                ),
              ),
              Expanded(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: color.AppColor.emergencyPageBackground,
                      ),
                      child: OverflowBox(
                        child: SingleChildScrollView(
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 60, left: 30, right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    """At Xtra-Clean our focus is to provide an impeccable cleaning service with minimal disruption to our environment. You can be sure to expect professionalism, efficiency and exceptional results from each and every job.
""",
                                    style: TextStyle(
                                        color:
                                            color.AppColor.homePageBackground,
                                        fontSize: 21,
                                        fontWeight: FontWeight.w400)),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "—————",
                                  style: TextStyle(
                                      color: color.AppColor.homePageBackground,
                                      fontWeight: FontWeight.w800),
                                ),
                                
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.phone_iphone,
                                      color: color.AppColor.homePageBackground,
                                      size: 20,
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      " Emergency Enquries",
                                      style: TextStyle(
                                          color:
                                              color.AppColor.homePageBackground,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                               const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  """Dear customer, please call Xtra-Clean Service
Limited on 08099222225, 08023139173, 080XRACLEAN or LAWMA Response Centre (LRC) on the following numbers: 018538601, 8177878, 8757563, 8739736.
""",
                                  style: TextStyle(
                                      color: color.AppColor.homePageBackground,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      )))
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
        ));
  }
}
