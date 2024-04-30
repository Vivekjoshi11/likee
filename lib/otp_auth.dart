
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:likee/home.dart';

// class OtpAuth extends StatefulWidget {
//   final  String verificationId;
//   OtpAuth({required this.verificationId});

//   @override
//   State<OtpAuth> createState() => _OtpAuthState();
// }

// class _OtpAuthState extends State<OtpAuth> {
//   final TextEditingController _otpController = TextEditingController();
//     // final TextEditingController _phoneNumberController = TextEditingController();

//   Future<void> _submitOTP
//   (BuildContext context)async{
//     String otp = _otpController.text.trim();
//     FirebaseAuth auth = FirebaseAuth.instance;
     
//      try{} catch(e){
//       PhoneAuthCredential credential = PhoneAuthProvider.credential(
//         verificationId: widget.verificationId,
//         smsCode: otp,
//       );
//       await auth.signInWithCredential(credential);
//       Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home(),));
//       print(e);
//      }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Verification"),
//       ),
//         body: Padding(padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             const SizedBox(height: 80,),
//             const Center(
//               child: Text("Phone Verfication",
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
//               ),
              
//               ),
//               const SizedBox(height: 50,),
//               Padding(padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 50),
//               child: TextFormField(
//                 controller: _otpController,
//                 keyboardType: TextInputType.phone,
//                 decoration:  InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   labelText: "Phone Number", 
//                 ),
//               ),
//               ),
//               const SizedBox(height: 16,),
//               InkWell(
//                 onTap: () async =>  _submitOTP,
//                 child: Container(
//                   padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
//                   // width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: const Color.fromARGB(255, 241,95,138),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: const Text("Verify",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18,
//                   ),),
//                 ),
//               )
//           ],
//         ),),
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:likee/home.dart';

class OtpAuth extends StatefulWidget {
  final String verificationId;
  OtpAuth({required this.verificationId});

  @override
  State<OtpAuth> createState() => _OtpAuthState();
}

class _OtpAuthState extends State<OtpAuth> {
  final TextEditingController _otpController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance; // Instance of FirebaseAuth

  Future<void> _submitOTP(BuildContext context) async {
    String otp = _otpController.text.trim();

    try {
      // Create PhoneAuthCredential using verificationId and OTP
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: widget.verificationId,
        smsCode: otp,
      );

      // Sign in with the credential
      UserCredential userCredential = await _auth.signInWithCredential(credential);

      // Handle successful sign-in
      if (userCredential.user != null) {
        Navigator.pushReplacement( // Use Navigator.pushReplacement to avoid back button navigation
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      } else {
        // Handle sign-in failure (optional: show error message)
        print('Sign-in failed');
      }
    } on FirebaseAuthException catch (e) {
      // Handle specific FirebaseAuth exceptions (optional: show more informative error messages)
      print(e.code);
    } catch (e) {
      // Handle other exceptions
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verification"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 80.0),
            const Center(
              child: Text(
                "Phone Verification",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 50.0),
              child: TextFormField(
                controller: _otpController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: "OTP", // Use "OTP" instead of "Phone Number"
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            InkWell(
              onTap: () => _submitOTP(context), // No need for async here (handled in the function)
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 25.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 95, 138), // Adjust color as needed
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Text(
                  "Verify",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
