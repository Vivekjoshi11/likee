import 'package:flutter/material.dart';
import 'package:likee/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:likee/login.dart';
import 'package:likee/message.dart';
import 'package:likee/profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:likee/star.dart';

class Like extends StatefulWidget {
  const Like({super.key});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
   final _currentIndex = ValueNotifier<int>(0);
  final List<Widget> _screens = [
   const  Home(), // Replace with your actual home screen
    const StarScreen(), // Replace with your star screen
    const Like(),  // Replace with your like screen
    const Message(), // Replace with your message screen
    const ProfileInfo(), // Replace with your person screen
  ];
  final List<String> imageUrls = [
  'https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=612x612&w=0&k=20&c=QjebAlXBgee05B3rcLDAtOaMtmdLjtZ5Yg9IJoiy-VY=',
  'https://th.bing.com/th/id/OIP.KnEbwYKLRJ75lDkD_ltltgHaHa?w=1308&h=1308&rs=1&pid=ImgDetMain',
  'https://media.licdn.com/dms/image/D5603AQEOYZAYl-shaA/profile-displayphoto-shrink_800_800/0/1690057556616?e=2147483647&v=beta&t=jacHX4_GAKzVFV5C_h5vsqukCWmby3-X4H-BDwF_jEw',
  'https://media.licdn.com/dms/image/D5603AQEOYZAYl-shaA/profile-displayphoto-shrink_800_800/0/1690057556616?e=2147483647&v=beta&t=jacHX4_GAKzVFV5C_h5vsqukCWmby3-X4H-BDwF_jEw',
  'https://th.bing.com/th/id/OIP.KnEbwYKLRJ75lDkD_ltltgHaHa?w=1308&h=1308&rs=1&pid=ImgDetMain',
  'https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=612x612&w=0&k=20&c=QjebAlXBgee05B3rcLDAtOaMtmdLjtZ5Yg9IJoiy-VY='
  'https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=612x612&w=0&k=20&c=QjebAlXBgee05B3rcLDAtOaMtmdLjtZ5Yg9IJoiy-VY=',
  'https://th.bing.com/th/id/OIP.KnEbwYKLRJ75lDkD_ltltgHaHa?w=1308&h=1308&rs=1&pid=ImgDetMain',
  // Add more image URLs here
];
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Like Profiles',
      //   style: TextStyle(
      //     color: Colors.black,
      //   ),),
      // ),
      // body: const Center(
      //   child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //        Text(
      //         'Like',
      //       ),
      //     ],
      //   ),
      // ), 
  
appBar: AppBar(
          title: const Text('My Favourite',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),),
        ),
        body: GridView.count(
          crossAxisCount: 2, // Two images per row
          mainAxisSpacing: 10.0, // Spacing between rows
          crossAxisSpacing: 5.0, // Spacing between columns
          children: imageUrls.map((imageUrl) => Image.network(imageUrl, fit: BoxFit.cover)).toList(),
        ),       


       bottomNavigationBar: BottomNavigationBar( // Add bottomNavigationBar here
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home, color: Colors.black),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(CupertinoIcons.map_pin_ellipse, color: Colors.black),
              label: 'Star',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.heart, color: Colors.pink),
              label: 'Like',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message, color: Colors.black),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black),
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
    );
  }
}