import 'package:flutter/material.dart';
import 'package:likee/home.dart';
import 'package:likee/like.dart';
import 'package:likee/message.dart';
import 'package:likee/profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:likee/star.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  
   final _currentIndex = ValueNotifier<int>(0);
  final List<Widget> _screens = [
   const  Home(), // Replace with your actual home screen
    const StarScreen(), // Replace with your star screen
    const Like(),  // Replace with your like screen
    const Message(), // Replace with your message screen
    const ProfileInfo(), // Replace with your person screen
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       bottomNavigationBar: BottomNavigationBar( // Add bottomNavigationBar here
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home, color: Colors.black),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.star, color: Colors.black),
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
    );
  }
}