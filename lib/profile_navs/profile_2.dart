import 'package:flutter/material.dart';
import '../components/colors.dart' as color;

class Profile_2 extends StatelessWidget {
  const Profile_2({Key? key}) : super(key: key);

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
                  width: 110,
                ),
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                print('edit Clicked');
              },
              child: const Text(
                'Edit',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                print('Upload Picture Clicked');
              },
              child: const Text(
                'Upload Picture',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                print('Change password Clicked');
              },
              child: const Text(
                'Change password',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 25,
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
