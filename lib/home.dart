import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:likee/drawer.dart';
import 'package:likee/like.dart';
// import 'package:likee/addprofile.dart';
import 'package:likee/login.dart';
import 'package:likee/message.dart';
import 'package:likee/profile.dart';
import 'package:likee/star.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
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
  Widget build(BuildContext context){
    return MaterialApp(
      home: 
      Scaffold( // Use Scaffold with bottomNavigationBar property
        backgroundColor: const Color.fromARGB(255, 253, 245, 247),
        body: SingleChildScrollView(
          child:  Container(
            // width: 350.0, // Adjust width as needed
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 253, 245, 247),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                // Top section with Text and Subtext
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Row(),
                    Icon(
                      Icons.location_on,
                      color: Color.fromARGB(255, 241, 95, 138),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          'London, United Kingdom',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(
                      Icons.notifications,
                      color: Color.fromARGB(255, 241, 95, 138),
                      
                    ),
                    
                  ],
                ),
                const SizedBox(height: 10.0),
                // Center section with Search bar
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20.0),
                Container(
                  // width: 200,
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/images/sampleimage.jpg'),
                      fit: BoxFit.cover,
                    ),
                    
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Alexa , 22',
                        style: TextStyle(
                          fontSize: 34.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Text(
                            'UI/UX  Designer',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20, left: 20),
                      ),
                    ],
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle login logic (navigation, error handling, etc.)
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 50.0),
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                        ),
                        child: const Icon(
                          Icons.close,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle login logic (navigation, error handling, etc.)
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 70.0),
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                        ),
                        child: const FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle login logic (navigation, error handling, etc.)
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 50.0),
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                        ),
                        child: const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        drawer: const MyDrawer(),
        bottomNavigationBar: BottomNavigationBar( // Add bottomNavigationBar here
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home, color: Colors.pink),
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
      ),
    );
  }
}

// ... similar code for StarScreen, LikeScreen, MessageScreen, and PersonScreen


// Replace these with your actual screens (classes)
// class StarScreen extends StatelessWidget {
//   const StarScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Star'),
//       ),
//       body: const Center(
//         child: Text('This is the Star Screen'),
//       ),
//     );
//   }
// }


// class HomeState extends State<Home> {
//   // int _selectedIndex = 0;  
//   final _currentIndex = ValueNotifier<int>(0);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor:
//             const Color.fromARGB(255, 253, 245, 247), // Background color
//         body: Center(
//           child: Container(
//             // width: 350.0, // Adjust width as needed
//             padding: const EdgeInsets.all(20.0),
//             decoration: BoxDecoration(
//               color: const Color.fromARGB(255, 253, 245, 247),
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             child: Column(
//               children: [
//                 // Top section with Text and Subtext
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     // Row(),
//                     Icon(
//                       Icons.location_on,
//                       color: Color.fromARGB(255, 241, 95, 138),
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Location',
//                           style: TextStyle(fontSize: 20.0),
//                         ),
//                         Text(
//                           'London, United Kingdom',
//                           style: TextStyle(fontSize: 16.0, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 100,
//                     ),
//                     Icon(
//                       Icons.notifications,
//                       color: Color.fromARGB(255, 241, 95, 138),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 10.0),
//                 // Center section with Search bar
//                 TextField(
//                   decoration: InputDecoration(
//                     hintText: 'Search',
//                     prefixIcon: const Icon(Icons.search),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(
//                         20.0,
//                       ),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 20.0),
//                 Container(
//                   // width: 200,
//                   height: 500,
//                   width: MediaQuery.of(context).size.width,
//                   // height: MediaQuery.of(context).size.height,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     image: const DecorationImage(
//                       image: AssetImage('lib/assets/images/sampleimage.jpg'),
//                       fit: BoxFit.cover,
//                     ),
                    
//                   ),
//                   child: const Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Alexa , 22',
//                         style: TextStyle(
//                           fontSize: 34.0,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                       SizedBox(height: 10.0),
//                       Row(
//                         children: [
//                           Text(
//                             'UI/UX  Designer',
//                             style: TextStyle(
//                               fontSize: 16.0,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(bottom: 20, left: 20),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Row(
//                   // mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Expanded(
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Handle login logic (navigation, error handling, etc.)
//                         },
//                         style: ElevatedButton.styleFrom(
//                           minimumSize: const Size(double.infinity, 50.0),
//                           backgroundColor: Colors.white,
//                           shape: const CircleBorder(),
//                         ),
//                         child: const Icon(
//                           Icons.close,
//                           color: Colors.pink,
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Handle login logic (navigation, error handling, etc.)
//                         },
//                         style: ElevatedButton.styleFrom(
//                           minimumSize: const Size(double.infinity, 70.0),
//                           backgroundColor: Colors.white,
//                           shape: const CircleBorder(),
//                         ),
//                         child: const FaIcon(
//                           FontAwesomeIcons.solidHeart,
//                           color: Colors.pink,
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Handle login logic (navigation, error handling, etc.)
//                         },
//                         style: ElevatedButton.styleFrom(
//                           minimumSize: const Size(double.infinity, 50.0),
//                           backgroundColor: Colors.white,
//                           shape: const CircleBorder(),
//                         ),
//                         child: const Icon(
//                           Icons.star,
//                           color: Colors.amber,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           // currentIndex: _currentIndex.value,
          
//           items: const [
//             BottomNavigationBarItem(
//                 icon: FaIcon(FontAwesomeIcons.home, color: Colors.black),
//                 label: 'matches'),
//             BottomNavigationBarItem(
//                 icon: FaIcon(FontAwesomeIcons.star, color: Colors.black),
//                 label: 'star'),
//             BottomNavigationBarItem(
//                 icon: Icon(FontAwesomeIcons.heart, color: Colors.black),
//                 label: 'like',
//                 ),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.message, color: Colors.black),
//                 label: 'message'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.person, color: Colors.black),
//                 label: 'Person'),
//           ],
//           onTap: (index) {
//             _currentIndex.value = index; // Update selected index
//             // Optional: Handle navigation or functionality based on index
//             print("Selected Index: $index");
//           },
//         ),
        
//       ),
//     );
//   }
// }
