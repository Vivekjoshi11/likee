import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:likee/otp_auth.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final TextEditingController _phoneNumberController = TextEditingController();

  Future<void> _submitPhoneNumber(BuildContext context)async{
    String phoneNumber = _phoneNumberController.text.trim();
    FirebaseAuth auth = FirebaseAuth.instance;

   await auth.verifyPhoneNumber(
    phoneNumber: phoneNumber,
    verificationCompleted: (PhoneAuthCredential credential) async{},
   verificationFailed: (FirebaseAuthException e){print(e.message.toString());}, 
   codeSent: (String verificationId, int? resendToken){
    Navigator.push(context, 
    MaterialPageRoute(builder: (context)=>OtpAuth(verificationId: verificationId,),
    ));
   },
    codeAutoRetrievalTimeout: (String verificationId){},);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 80,),
            const Center(
              child: Text("Phone Authentication",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              
              ),
              const SizedBox(height: 50,),
              Padding(padding: const EdgeInsets.all(8),
              child: TextFormField(
                controller: _phoneNumberController,
                keyboardType: TextInputType.phone,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Phone Number", 
                ),
              ),
              ),
              const SizedBox(height: 16,),
              InkWell(
                onTap: ()=> _submitPhoneNumber(context),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                  // width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 241,95,138),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text("Send Otp",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                ),
              ),
              const SizedBox(height: 50,),
              const Text('Note: Enter Phone number with country Code')
          ],
          
        ),),
    );
  }
}