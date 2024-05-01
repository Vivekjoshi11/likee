import 'package:flutter/material.dart';
import 'package:likee/addprofile.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Likee'),
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/images/likee1.png'),
                fit: BoxFit.fill),
          ),
          child: Container(
            width: 400,
            height: 350,

            padding: const EdgeInsets.only(top: 100, bottom: 30),
            // color: const Color.fromARGB(255, 220, 67, 179),
            decoration: BoxDecoration(
              color: Colors.white, // Container color
              borderRadius: BorderRadius.circular(20), // Set border radius
            ),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Padding(padding: ),
                const Text('Find Your Partener With us ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold),),
                const SizedBox(height: 1,),
                const Text(' With us ',
                style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold),),
                const Text('Amet minimum molit non deserunt sit alique dolor do amet sint',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      // Add your button functionality here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const profile()),
                      );
                    },
                    child: const Text('Next'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(
                          255, 241, 95, 138), // Set text color
                      padding: const EdgeInsets.all(16.0), // Set padding
                      shape: const StadiumBorder(),
                      minimumSize: const Size(300, 50),
                    )),
              ],
            ),
          ),
        ));
  }
}

