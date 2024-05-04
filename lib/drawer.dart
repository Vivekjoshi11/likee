import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:likee/help.dart';
import 'package:likee/home.dart';
import 'package:likee/like.dart';
import 'package:likee/privacypolicy.dart';
import 'package:likee/profile.dart';
import 'package:likee/notification.dart';
import 'package:likee/setting.dart';
import 'package:likee/terms&condition.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    // const imageurl =
    //     "https://images.hindustantimes.com/auto/img/2022/04/10/1600x900/image.1624369648649_1649592750013_1649592755410.jpg";

    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 249,117,155),
        child: ListView(
          children: [
            // const DrawerHeader(
            //     padding: EdgeInsets.zero,
            //     child: UserAccountsDrawerHeader(
            //       margin: EdgeInsets.zero,
            //       accountName: Text("vivek"),
            //       accountEmail: Text("vj785099@gmail.com"),
            //       currentAccountPicture: CircleAvatar(
            //         backgroundImage: NetworkImage(imageurl),
            //       ),
            //     )
            //     ),
            const Image(image:  AssetImage(
                      'lib/assets/images/likeepinklogo.png'),
  //                     fit: BoxFit.none,
  // height: 100.0, // Set a desired height for the image
  // width: 100.0,
                      ),
            ListTile(
              leading: const Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: const Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileInfo()),
                );
              },
            ),
             ListTile(
              leading: const Icon(
                Icons.notification_important,
                color: Colors.white,
              ),
              title: const Text(
                "Notifications",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NotiFication()),
                );
              },
            ),
             ListTile(
              leading: const Icon(
                CupertinoIcons.heart_fill,
                color: Colors.white,
              ),
              title: const Text(
                "My-favouraits",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Like()),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              title: const Text(
                "Settings",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Setting()),
                );
              },
            ),
             ListTile(
              leading: const Icon(
                Icons.help_center,
                color: Colors.white,
              ),
              title: const Text(
                "Help & support",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Help()),
                );
              },
            ),
             const Divider( // Creates a horizontal line
            color: Color.fromARGB(255, 204, 201, 201), // Optional: Set the color of the divider
            thickness: 1.0,   // Optional: Set the thickness of the divider
            height: 20.0,    // Optional: Set the height of the divider (for vertical dividers)
            
          ),
           ListTile(
              title: const Text(
                "Privacy Policy",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Privacypolicy()),
                );
              },
            ),
            ListTile(
              title: const Text(
                "Terms & Conditions",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TermsAndcondition()),
                );
              },
            ),
            const SizedBox(height: 20,)
            
          ],
        ),
      ),
    );
  }
}
