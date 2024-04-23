import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[200], // Background color
        body: Center(
          child: Container(
            // width: 350.0, // Adjust width as needed
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                // Top section with Text and Subtext
                const SizedBox(height: 40,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Row(),
                    Icon(Icons.location_on,
                    color: Colors.pink,),
                    SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        
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
                    SizedBox(width: 100,),
                    Icon(Icons.notifications,
                    color: Colors.pink,),
                   
                  ],
                ),
                const SizedBox(height: 10.0),
                // Center section with Search bar
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0,),
                      
                    ),
                  ),
                ),
                
                const SizedBox(height: 20.0),
                // Profile section with Text and Subtext
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage('lib/assets/images/vivekimage.jpg'),),
                    Text(
                      'Alexa, 22',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Row(
                      children: [
                        Text(
                          'UI/UX Designer',
                          style: TextStyle(fontSize: 14.0, color: Colors.grey),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                          size: 20.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          
        ),
        bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.home, color: Colors.black), label: 'matches'),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.star, color: Colors.black), label: 'star'),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.heart, color: Colors.black), label: 'like'),
          BottomNavigationBarItem(icon: Icon(Icons.message, color: Colors.black), label: 'message'),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.black), label: 'message'),
        ],
        onTap: (index) {
          print("Selected Index: $index");
        },
      ),
      ),
    );
  }
}