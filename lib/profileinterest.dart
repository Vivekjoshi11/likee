import 'package:flutter/material.dart';
import 'package:likee/idealmatch.dart';

class Profileinterest extends StatefulWidget {
  const Profileinterest({super.key});

  @override
  State<Profileinterest> createState() => ProfileinterestrofileIinterestState();
}

class ProfileinterestrofileIinterestState extends State<Profileinterest> {
  @override
 Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(leading: IconButton(
            icon: const Icon(Icons.arrow_back), // Back icon
            onPressed: () {
              // Handle back button press (e.g., navigate back)
              Navigator.pop(context); // Example: Pop back to previous screen
            },
          ),),
        backgroundColor: Colors.blueGrey[200], // Background color
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                // const SizedBox(height: 50.0),
                const Text(
                  'Select your Interest',
                  style: TextStyle(fontSize: 30.0,
                  fontWeight: FontWeight.bold),
                  
                ),
                const Text('        Select a few of the interest to match with users       who have similar things in common'),
                const SizedBox(height: 30.0),
                // Interest cards will be placed here
                 const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InterestCard(text: 'Movie',),
                    SizedBox(width: 20.0),
                    InterestCard(text: 'Snooker'),  
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InterestCard(text: 'Books Reading'),
                    SizedBox(width: 20.0),
                    InterestCard(text: 'Swiming'),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InterestCard(text: 'Design'),
                    SizedBox(width: 20.0),
                    InterestCard(text: 'Photography'),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InterestCard(text: 'Music'),
                    SizedBox(width: 20.0),
                    InterestCard(text: 'Shoping'),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InterestCard(text: 'Cooking'),
                    SizedBox(width: 20.0),
                    InterestCard(text: 'Art'),
                  ],
                ),
                const SizedBox(height: 150.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Idealmatch()),
                );
                    print('Continue Button Pressed');
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

class InterestCard extends StatefulWidget {
  final String text;
  final bool isSelected; // Added to store selection state

  const InterestCard({super.key, required this.text, this.isSelected = false});

  @override
  State<InterestCard> createState() => _InterestCardState();
}

class _InterestCardState extends State<InterestCard> {
  Color cardColor = Colors.white; // Initial card color

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          cardColor = cardColor == Colors.white ? Colors.pink : Colors.white;
        });
        // Handle user tap on the card (e.g., print message)
        print('Interest selected: ${widget.text}');
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: cardColor,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(widget.text),
      ),
    );
  }
}
