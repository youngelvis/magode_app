import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/colors.dart' as color;
class Navigation_3 extends StatelessWidget {
  const Navigation_3({ Key? key }) : super(key: key);

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
                'Update Member Info',
                style: TextStyle(fontSize: 17),
              ),
              leading: IconButton(
                icon: Icon(Icons.assignment,
                    color: color.AppColor.homeSecondaryTheme, size: 30),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: const Text(
                'Event Request',
                style: TextStyle(fontSize: 17),
              ),
              leading: IconButton(
                icon: Icon( FontAwesomeIcons.trophy,
                    color: color.AppColor.homeSecondaryTheme, size: 25),
                onPressed: () {},
              ),
            ),
             ListTile(
              title: const Text(
                'Reports',
                style: TextStyle(fontSize: 17),
              ),
              leading: IconButton(
                icon: Icon(Icons.poll,
                    color: color.AppColor.homeSecondaryTheme, size: 30),
                onPressed: () {},
              ),
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