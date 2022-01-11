import 'package:flutter/material.dart';


import 'colors.dart' as color;

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // total body
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
                  'About Magodo Estate',
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
            
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child: OverflowBox(
                   child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            "Magodo GRA II is located along the Lagos-Ibadan expressway, close to the border between Lagos State and Ogun State; it is bordered by Ikosi-Ketu and Ojodu Berger. Magodo is a town in Kosofe Local Government Area of Lagos State. The Government Reserved Area (GRA) of Magodo is a well-structured estate and one of the highbrow areas on the Lagos Mainland. There are several demarcated streets within the GRA named as ‘Zones’ which have their individual security posts and guards on patrol. Most street roads within the GRA are steep i.e. the roads are not flat, they rise and fall sharply.",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'open sans',
                                color: color.AppColor.homePageSubtitle),
                          ),
                          Text(
                            "\nThe estate is very calm and serene, minimal noise from cars (no honking allowed except when very necessary). The tranquility of the neighbourhood comes with no rowdiness, privacy, well-paved streets, good waste management, and little or no traffic. This also makes it a perfect place to raise kids in, away from the busy/clumsy streets of Lagos. The modern structures come with a class of its own, however, there are still a few old houses. To get around easily, the estate has its shuttle buses. ",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'open sans',
                                color: color.AppColor.homePageSubtitle),
                          ),
                        ],
                      ),
                    ),
                  ),),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
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
