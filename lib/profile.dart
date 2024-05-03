import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:likee/aboutus.dart';
import 'package:likee/addprofile.dart';
import 'package:likee/bottomnavigation.dart';
import 'package:likee/drawer.dart';
import 'package:likee/gender.dart';
// import 'package:likee/addprofile.dart';
import 'package:likee/home.dart';
import 'package:likee/like.dart';
import 'package:likee/login.dart';
import 'package:likee/message.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:likee/privacypolicy.dart';
import 'package:likee/setting.dart';
import 'package:likee/star.dart';
import 'package:likee/terms&condition.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  // final _currentIndex = ValueNotifier<int>(0);

  // Screens to navigate to based on the selected index

  final _currentIndex = ValueNotifier<int>(0);
  final List<Widget> _screens = [
    const Home(), // Replace with your actual home screen
    const StarScreen(), // Replace with your star screen
    const Like(), // Replace with your like screen
    const Message(), // Replace with your message screen
    const ProfileInfo(), // Replace with your person screen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, // Align content to the left
          children: [
            // Profile section with image and name
            Column(
              children: [
                CircleAvatar(
                  radius: 50.0, // Set image radius
                  backgroundImage: const AssetImage(
                      'lib/assets/images/sampleimage.jpg'), // Replace with your image path
                  child: Stack(
                    children: [
                      // Position the edit icon at the bottom left corner
                      Positioned(
                        bottom: 1.0, // Adjust positioning as needed
                        left: 70.0,
                        width: 30.0, // Adjust size as needed
    height: 30.0,
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            color: Colors
                                .pink, // Set background color (adjust as needed)
                            shape: BoxShape.circle,
                            
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.edit,
                            ),
                            onPressed: () {
                              // Handle edit button press (e.g., open edit profile screen)
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => const profile()),
                              
                              );
                              print('Edit button pressed');
                            },
                            iconSize: 20.0, // Adjust icon size as needed
                            color: Colors.black, // Set icon color to black
                            padding: EdgeInsets.zero, // Remove default padding
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Align text to the left
                  children: [
                    const Text(
                      'Mark Johnson',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'markjohnson@example.com',
                      style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20.0),

            // Text sections for Personal Details, Settings, etc.
            // const Text('Personal Details', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
            const Divider(thickness: 0.0),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Personal Detail'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const Home())), // Add navigation to Settings page
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const Setting())), // Add navigation to Settings page
            ),
            ListTile(
              leading: const Icon(Icons.document_scanner),
              title: const Text('Terms & Conditions'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const TermsAndcondition())), // Add navigation to Terms & Conditions page
            ),
            ListTile(
              leading: const Icon(Icons.notification_important),
              title: const Text('Privacy Policy'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const Privacypolicy())), // Add navigation to Privacy Policy page
            ),
            ListTile(
              leading: const Icon(Icons.remove_red_eye),
              title: const Text('About Us'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const AboutUs())), // Add navigation to About Us page
            ),
            const Divider(
              thickness: 0.5,
            ),

            // Logout button
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  // Add your button functionality here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor:
                      const Color.fromARGB(255, 241, 95, 138), // Set text color
                  padding: const EdgeInsets.all(16.0), // Set padding
                  shape: const StadiumBorder(),
                  minimumSize: const Size(300, 50),
                ),
                child: const Text('Log Out')),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // Add bottomNavigationBar here
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon:  Icon(
                CupertinoIcons.map_pin_ellipse, color: Colors.black),
            label: 'Star',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.heart, color: Colors.black),
            label: 'Like',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Colors.black),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.pink),
            label: 'Person',
          ),
        ],
        currentIndex: _currentIndex.value,
        selectedItemColor: Colors.pink[800],
        onTap: (index) {
          setState(() {
            _currentIndex.value = index;
          });
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => _screens[index]),
          );
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
