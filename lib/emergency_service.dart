import "package:flutter/material.dart";
import 'colors.dart' as color;

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
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                color: color.AppColor.homePageTheme,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: color.AppColor.emergencyPageBackground,
                ),
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        RichText(
                          text: const TextSpan(
                              text:
                                  """ At Xtra-Clean our focus is to provide an impeccable cleaning service with minimal disruption to our environment. You can be sure to expect professionalism, efficiency and exceptional results from each and every job.
""",
                              style:
                                  TextStyle(fontSize: 21, color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
