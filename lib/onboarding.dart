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
        title: const Text('Deepfake Detection'),
      ),
      body:
       Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('lib/assets/images/likee1.png'),
          fit: BoxFit.fill),
        ),        
       child: Container(
              width: 400,
              height: 400,
              padding: const EdgeInsets.only(top: 100),
              // color: const Color.fromARGB(255, 220, 67, 179),
              decoration: BoxDecoration(
              color: Colors.white, // Container color
              borderRadius: BorderRadius.circular(20), // Set border radius

            ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('hi first page'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Add your button functionality here
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const profile()),
                      );
                    },
                    child: const Text('Next'),
                    style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.pink, // Set text color
              padding: const EdgeInsets.all(16.0), // Set padding
              shape: const StadiumBorder(),
              minimumSize: const Size(300, 50),
                    )
                  ),
                ],
              ),
            ),
      )
    );
  }
}

//
// Container(
//               width: 200,
//               height: 200,
//               // color: const Color.fromARGB(255, 220, 67, 179),
//               decoration: BoxDecoration(
//               color: const Color.fromARGB(255, 220, 67, 179), // Container color
//               borderRadius: BorderRadius.circular(20), // Set border radius
//             ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text('hi first page'),
//                   const SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Add your button functionality here
//                     },
//                     child: const Text('Next'),
//                   ),
//                 ],
//               ),
//             ),