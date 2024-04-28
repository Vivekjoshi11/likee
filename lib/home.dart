import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  final _currentIndex = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:
            const Color.fromARGB(255, 253, 245, 247), // Background color
        body: Center(
          child: Container(
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
                // Profile section with Text and Subtext
                //  const Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [

                //      Image(image: AssetImage('lib/assets/images/vivekimage.jpg'),),
                //      Text(
                //       'Alexa, 22',
                //       style: TextStyle(fontSize: 18.0),
                //     ),
                //      Row(
                //       children: [
                //         Text(
                //           'UI/UX Designer',
                //           style: TextStyle(fontSize: 14.0, color: Colors.grey),
                //         ),
                //         Icon(
                //           Icons.arrow_drop_down,
                //           color: Colors.grey,
                //           size: 20.0,
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
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
                  // child: const Column(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     Text(
                  //       'name',
                  //       style: TextStyle(color: Colors.white),
                  //     ),
                  //     // Icon(
                  //     //   Icons.person,
                  //     //   color: Colors.white,
                  //     // ),
                  //   ],
                  // ),
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
                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.center,

                // )
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex.value,
          items: const [
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.home, color: Colors.black),
                label: 'matches'),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.star, color: Colors.black),
                label: 'star'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.heart, color: Colors.black),
                label: 'like'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message, color: Colors.black),
                label: 'message'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.black),
                label: 'Person'),
          ],
          onTap: (index) {
            _currentIndex.value = index; // Update selected index
            // Optional: Handle navigation or functionality based on index
            print("Selected Index: $index");
          },
        ),
        
      ),
    );
  }
}
