import 'package:flutter/material.dart';
import 'package:likee/home.dart';

class Idealmatch extends StatefulWidget {
  const Idealmatch({super.key});

  @override
  State<Idealmatch> createState() => _IdealmatchState();
}

class _IdealmatchState extends State<Idealmatch> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:  const Color.fromARGB(255, 249, 247, 247),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back), // Back icon
            onPressed: () {
              // Handle back button press (e.g., navigate back)
              Navigator.pop(context); // Example: Pop back to previous screen
            },
          ),
        ),
        // backgroundColor: Colors.red, // Background color
        body: Center(
          child: Container(
            // width: 350.0, // Adjust width as needed
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 249, 247, 247),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                // Top section with Text and Subtext
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      'Ideal Match',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                // Center section with Text
                const Text(
                  'What are you hoping to find here on Sprout?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 20.0),
                // Interest cards
                const Wrap(
                  spacing: 10.0, // Spacing between interest cards
                  runSpacing: 10.0, // Spacing between rows of interest cards
                  children: [
                    // InterestCard(text: 'Love'),
                    // InterestCard(text: 'You\'re not on here to play around'),
                    // InterestCard(text: 'Friends'),
                    // InterestCard(text: 'I want to meet new people'),
                    // InterestCard(text: 'Business'),
                    // InterestCard(text: 'Meet professional people'),
                    InterestCard(text: 'Love', icon: Icons.favorite),
                    InterestCard(text: 'Friends', icon: Icons.group),
                    InterestCard(text: 'Business' , icon: Icons.add_business_rounded),
                    // InterestCard(text: 'Friends', icon: Icons.group),
                    // InterestCard(text: 'Love', icon: Icons.favorite),
                    // InterestCard(text: 'Friends', icon: Icons.group),
                  ],
                ),
                const SizedBox(height: 20.0),
                // Continue button
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
                    // print('Continue Button Pressed');
                  },
                   child: const Text('Continue'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor:Colors.pink,
                    padding: const EdgeInsets.all(16.0),
                    shape: const StadiumBorder(),
                    minimumSize: const Size(300,50),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class InterestCard extends StatelessWidget {
//   final String text;

//   const InterestCard({super.key, required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(10.0),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey),
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       child: Text(text),
//     );
//   }
// }

class InterestCard extends StatelessWidget {
  final String text;
  final IconData icon; // Changed logo to IconData

  const InterestCard({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 236, 233, 233)),
        borderRadius: BorderRadius.circular(15.0),
         boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5), // Shadow color with transparency
            spreadRadius: 2.0, // Adjusts how far the shadow spreads
            blurRadius: 4.0, // Adjusts how blurry the shadow is
            offset: const Offset(2.0, 2.0), // Positions the shadow (x, y)
          ),
        ],
      ),
      child: Row(
        children: [
          // Icon instead of image
          Icon(
            icon,
            size: 30.0,
            color: Colors.pink, // Set icon color (optional)
          ),
          const SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bold text for name
              Text(
                text,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5.0),
              // Additional text
              const Text(
                'This is a description of the interest.',
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
