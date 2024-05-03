import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:likee/emaillogin.dart';
import 'package:likee/home.dart';
import 'package:likee/otp.dart';
import 'package:google_sign_in/google_sign_in.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 245, 247),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 50,),
              // App logo or name (if applicable)
              Image.asset(
                'lib/assets/images/likeelogo.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 25,),
             
              const Text(
                'Signup To Continue',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Text('Please Login to Continue'),
              const SizedBox(height: 20.0),
              const SizedBox(height: 20.0),

              // Login button
              ElevatedButton(
                onPressed: () {
                  // Handle login logic (navigation, error handling, etc.)
                   Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Emaillogin()),);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50.0),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 241, 95, 138),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Continue With email'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle login logic (navigation, error handling, etc.)
                   Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Otp()),);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50.0),
                  backgroundColor: Colors.white,
                  foregroundColor: const Color.fromARGB(255, 241, 95, 138),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Continue With Phone Number'),
              ),

              const SizedBox(height: 20.0),

              const Text(
                // '-------------------------   Or sign Up with   -------------------------',
                'Or sign Up with',
                style: TextStyle(
                  // fontSize: 25.0,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 20,),

              // Text for forgot password or signup options
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                 
                  ElevatedButton(
                    onPressed: () {
                      // Handle login logic (navigation, error handling, etc.)
                      signInWithGoogle();
                    },
                    style: ElevatedButton.styleFrom(
                      // minimumSize: const Size(double.infinity, 50.0),
                      // foregroundColor: Colors.white,
                      // backgroundColor: const Color.fromARGB(255, 241,95,138),
                      minimumSize: const Size(170, 50.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Row(
                      children: [
                        FaIcon(FontAwesomeIcons.google
                        ,
                          // color: Colors.pink,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Google',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle login logic (navigation, error handling, etc.)
                    },
                    style: ElevatedButton.styleFrom(
                      // minimumSize: const Size(double.infinity, 50.0),
                      // foregroundColor: Colors.white,
                      // backgroundColor: const Color.fromARGB(255, 241,95,138),
                      minimumSize: const Size(170, 50.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Row(
                      children: [
                        FaIcon(FontAwesomeIcons.facebook,
                          // color: Colors.pink,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Facebook',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              const Text('I accept all the'),
              const Text('Terms & conditions & privacy policy'),
            ],
            
          ),
        ),
      ),
    );
  }
  signInWithGoogle()async{
    
     GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

     GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
   
   AuthCredential credential =  GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
   );

   UserCredential userCredential =await FirebaseAuth.instance.signInWithCredential(credential);
   print(userCredential.user?.displayName);
  // FirebaseAuth.instance.signInWithCredential();
  if(userCredential.user != null){
     Navigator.pushReplacement( // Navigate and replace current screen
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const Home()), // Replace with your home page widget
      );
  }

}
}
