import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:likee/addprofile.dart';
import 'package:likee/home.dart';
import 'package:likee/like.dart';
import 'package:likee/login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:likee/profile.dart';
import 'package:likee/star.dart';

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
    const Like(),  // Replace with your like screen
    const Message(), // Replace with your message screen
    const ProfileInfo(), // Replace with your person screen
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {}, // Add search functionality here
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {}, // Add overflow menu functionality here
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(chat.imageUrl),
            ),
            title: Text(chat.name),
            subtitle: Text(chat.lastMessage),
            trailing: Text(chat.timeAgo),
          );
        },
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
              icon: FaIcon(FontAwesomeIcons.heart, color: Colors.black),
              label: 'Like',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message, color: Colors.pink),
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


List<Chat> chats = [
  const Chat(
    imageUrl: 'https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=612x612&w=0&k=20&c=QjebAlXBgee05B3rcLDAtOaMtmdLjtZ5Yg9IJoiy-VY=',
    name: 'Cameron Williamson',
    lastMessage: 'We have visit your site today',
    timeAgo: '2 min ago',
  ),
  const Chat(
    imageUrl: 'https://th.bing.com/th/id/OIP.KnEbwYKLRJ75lDkD_ltltgHaHa?w=1308&h=1308&rs=1&pid=ImgDetMain',
    name: 'Dianne Russell',
    lastMessage: 'See you buddy',
    timeAgo: '32 min ago',
  ),
   const Chat(
    imageUrl: 'https://media.licdn.com/dms/image/D5603AQEOYZAYl-shaA/profile-displayphoto-shrink_800_800/0/1690057556616?e=2147483647&v=beta&t=jacHX4_GAKzVFV5C_h5vsqukCWmby3-X4H-BDwF_jEw',
    name: 'Dianne Russell',
    lastMessage: 'See you buddy',
    timeAgo: '32 min ago',
  ),
   const Chat(
    imageUrl: 'https://th.bing.com/th/id/OIP.c0GTqHSPgp9rz7Pn2Aw_8wHaF7?rs=1&pid=ImgDetMain',
    name: 'Dianne Russell',
    lastMessage: 'See you buddy',
    timeAgo: '32 min ago',
  ),
   const Chat(
    imageUrl: 'https://sb.kaleidousercontent.com/67418/1920x1545/c5f15ac173/samuel-raita-ridxdghg7pw-unsplash.jpg',
    name: 'Dianne Russell',
    lastMessage: 'See you buddy',
    timeAgo: '32 min ago',
  ),
    const Chat(
    imageUrl: 'https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=612x612&w=0&k=20&c=QjebAlXBgee05B3rcLDAtOaMtmdLjtZ5Yg9IJoiy-VY=',
    name: 'Cameron Williamson',
    lastMessage: 'We have visit your site today',
    timeAgo: '2 min ago',
  ),
  const Chat(
    imageUrl: 'https://th.bing.com/th/id/OIP.KnEbwYKLRJ75lDkD_ltltgHaHa?w=1308&h=1308&rs=1&pid=ImgDetMain',
    name: 'Dianne Russell',
    lastMessage: 'See you buddy',
    timeAgo: '32 min ago',
  ),
   const Chat(
    imageUrl: 'https://media.licdn.com/dms/image/D5603AQEOYZAYl-shaA/profile-displayphoto-shrink_800_800/0/1690057556616?e=2147483647&v=beta&t=jacHX4_GAKzVFV5C_h5vsqukCWmby3-X4H-BDwF_jEw',
    name: 'Dianne Russell',
    lastMessage: 'See you buddy',
    timeAgo: '32 min ago',
  ),
   const Chat(
    imageUrl: 'https://th.bing.com/th/id/OIP.c0GTqHSPgp9rz7Pn2Aw_8wHaF7?rs=1&pid=ImgDetMain',
    name: 'Dianne Russell',
    lastMessage: 'See you buddy',
    timeAgo: '32 min ago',
  ),
   const Chat(
    imageUrl: 'https://sb.kaleidousercontent.com/67418/1920x1545/c5f15ac173/samuel-raita-ridxdghg7pw-unsplash.jpg',
    name: 'Dianne Russell',
    lastMessage: 'See you buddy',
    timeAgo: '32 min ago',
  ),
  // ... add more chats
];

class Chat {
  final String imageUrl;
  final String name;
  final String lastMessage;
  final String timeAgo;

  const Chat({
    required this.imageUrl,
    required this.name,
    required this.lastMessage,
    required this.timeAgo,
  });
}