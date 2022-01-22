import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/colors.dart' as color;

class Navigation1 extends StatelessWidget {
  const Navigation1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: OverflowBox(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 80,
                  left: 50,
                  right: 25,
                ),
                child: Text(
                  'Navigation',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: color.AppColor.homePageTheme),
                ),
              ),
              decoration:
                  BoxDecoration(color: color.AppColor.homeSecondaryTheme),
            ),
            ListTile(
              title: const Text(
                'profile',
                style: TextStyle(fontSize: 17),
              ),
              leading: IconButton(
                icon: Icon(Icons.account_circle,
                    color: color.AppColor.homeSecondaryTheme, size: 30),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: const Text(
                'Get Passcode',
                style: TextStyle(fontSize: 17),
              ),
              leading: IconButton(
                icon: Icon(Icons.person_add_sharp,
                    color: color.AppColor.homeSecondaryTheme, size: 30),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: const Text(
                'Get Bulk Passcodes',
                style: TextStyle(fontSize: 17),
              ),
              leading: IconButton(
                icon: Icon(Icons.group_add,
                    color: color.AppColor.homeSecondaryTheme, size: 30),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: const Text(
                'Person Passcodes',
                style: TextStyle(fontSize: 17),
              ),
              leading: IconButton(
                icon: Icon(Icons.person,
                    color: color.AppColor.homeSecondaryTheme, size: 30),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: const Text(
                'View Passcodes',
                style: TextStyle(fontSize: 17),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.list,
                  color: color.AppColor.homeSecondaryTheme,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 10
            ),
            Divider(
              color: color.AppColor.homePageTheme,
              thickness: 1,
            ),
             const SizedBox(
              height: 10
            ),
            ListTile(
              title: const Text(
                'Find a Zone',
                style: TextStyle(fontSize: 17),
              ),
              leading: IconButton(
                icon: Icon(Icons.location_pin,
                    color: color.AppColor.homeSecondaryTheme, size: 30),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: const Text(
                'News',
                style: TextStyle(fontSize: 17),
              ),
              leading: IconButton(
                icon: Icon(Icons.messenger_sharp,
                    color: color.AppColor.homeSecondaryTheme, size: 30),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: const Text(
                'Contact Us',
                style: TextStyle(fontSize: 17),
              ),
              leading: IconButton(
                icon: Icon(Icons.perm_phone_msg,
                    color: color.AppColor.homeSecondaryTheme, size: 30),
                onPressed: () {},
              ),
            ),
             const SizedBox(
              height: 10
            ),
            Divider(
              color: color.AppColor.homePageTheme,
              thickness: 1,
            ),
             const SizedBox(
              height: 10
            ),
            ListTile(
              title: const Text(
                'Log Out',
                style: TextStyle(fontSize: 17),
              ),
              leading: IconButton(
                icon: Icon(FontAwesomeIcons.signOutAlt,
                    color: color.AppColor.homeSecondaryTheme, size: 30),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
