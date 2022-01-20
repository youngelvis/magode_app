import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/colors.dart' as color;

class Navigation1 extends StatelessWidget {
  const Navigation1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  Row(
                    children:  [
                      IconButton(icon: Icon(Icons.arrow_back, size: 40, color: color.AppColor.homePageTheme,) ,onPressed: (){},),
                      
                     const SizedBox(
                        width: 100,
                      ),
                      Text(
                        'Navigation',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800,
                            color: color.AppColor.homeSecondaryTheme),
                      )
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(color: color.AppColor.homePageTheme),
            ),
            ListTile(
              title: Text('profile'),
              leading: IconButton(
                icon: Icon(
                  CupertinoIcons.person_crop_circle,
                  color: color.AppColor.homeSecondaryTheme,


                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text('Get Passcode'),
              leading: IconButton(
                icon: Icon(
                  Icons.person_add_sharp,
                  color: color.AppColor.homeSecondaryTheme,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text('Get Bulk Passcodes'),
              leading: IconButton(
                icon: Icon(
                  Icons.group_add,
                  color: color.AppColor.homeSecondaryTheme,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text('Person Passcodes'),
              leading: IconButton(
                icon: Icon(
                  Icons.person,
                  color: color.AppColor.homeSecondaryTheme,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text('View Passcodes'),
              leading: IconButton(
                icon: Icon(
                  Icons.list,
                  color: color.AppColor.homeSecondaryTheme,
                ),
                onPressed: () {},
              ),
            ),
            Divider(
              color: color.AppColor.homePageTheme,
            ),
            ListTile(
              title: Text('View Passcodes'),
              leading: IconButton(
                icon: Icon(
                  Icons.list,
                  color: color.AppColor.homeSecondaryTheme,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text('Find a Zone'),
              leading: IconButton(
                icon: Icon(
                  Icons.location_pin,
                  color: color.AppColor.homeSecondaryTheme,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text('News'),
              leading: IconButton(
                icon: Icon(
                  Icons.messenger_sharp,
                  color: color.AppColor.homeSecondaryTheme,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text('Contact Us'),
              leading: IconButton(
                icon: Icon(
                  Icons.perm_phone_msg,
                  color: color.AppColor.homeSecondaryTheme,
                ),
                onPressed: () {},
              ),
            ),
             Divider(
               color: color.AppColor.homePageTheme,
             ),
             ListTile(
              title: Text('Log Out'),
              leading: IconButton(
                icon: Icon(
                  Icons.logout,
                  color: color.AppColor.homeSecondaryTheme,

                ),
                onPressed: () {},
              ),
            ),
          ],
          
        ),
      ),
    );
  }
}
