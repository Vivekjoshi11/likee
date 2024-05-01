import 'package:flutter/material.dart';
// import 'package:likee/addprofile.dart';
import 'package:likee/home.dart';
import 'package:likee/login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:likee/profile.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {

  final _currentIndex = ValueNotifier<int>(0);

  // Screens to navigate to based on the selected index
  final List<Widget> _screens = [
   const  Home(), // Replace with your actual home screen
    const StarScreen(), // Replace with your star screen
    const LoginPage(),  // Replace with your like screen
    const Message(), // Replace with your message screen
    const ProfileInfo(), // Replace with your person screen
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages',
        style: TextStyle(
          color: Colors.black,
        ),),
      ),
      body: const Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              'messages',
            ),
          ],
        ),
      ),
       bottomNavigationBar: BottomNavigationBar( // Add bottomNavigationBar here
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home, color: Colors.black),
              label: 'Matches',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.star, color: Colors.black),
              label: 'Star',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.heart, color: Colors.grey),
              label: 'Like',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message, color: Colors.black),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.grey),
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