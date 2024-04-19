import 'package:flutter/material.dart';
import 'package:likee/gender.dart';

// ignore: camel_case_types
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

// ignore: camel_case_types
class _profileState extends State<profile> {
  String name = "";
  String email = "";
  String mobileNumber = "";
  String dateOfBirth = "";
  String address = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Profile Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Profile section (replace with your profile image widget)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                          'lib/assets/images/likee1.png'), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        BorderRadius.circular(20.0), // Set border radius
                  ),
                ),
                const SizedBox(width: 20.0),
                Text(
                  name, // Display name from variable
                  style: const TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            const SizedBox(height: 50.0),
            // const Divider(thickness: 1.0),

            // Editable information fields
            TextField(
              decoration:  InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
              ),
              onChanged: (value) =>
                  setState(() => name = value), // Update name on change
            ),
            const SizedBox(height: 10,),
            TextField(
              decoration:  InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
              ),

              keyboardType:
                  TextInputType.emailAddress, // Set keyboard type for email
              onChanged: (value) =>
                  setState(() => email = value), // Update email on change
            ),
            const SizedBox(height: 10,),
            TextField(
              decoration:  InputDecoration(
                labelText: 'Phone',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
              ),
              keyboardType: TextInputType.phone, // Set keyboard type for phone
              onChanged: (value) => setState(
                  () => mobileNumber = value), // Update mobile number on change
            ),
            const SizedBox(height: 10,),
            TextField(
             decoration:  InputDecoration(
                labelText: 'Date of Birth',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
              ),
              keyboardType: TextInputType
                  .datetime, // Set keyboard type for date (may require additional package)
              onChanged: (value) => setState(
                  () => dateOfBirth = value), // Update date of birth on change
            ),
            const SizedBox(height: 10,),
            TextField(
              decoration:  InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
              ),
              maxLines: 3, // Allow multiple lines for address
              onChanged: (value) =>
                  setState(() => address = value), // Update address on change
            ),
            const SizedBox(height: 10,),

            const SizedBox(height: 20.0),

            // Save button
            ElevatedButton(
              onPressed: () {
                // Handle save button press (e.g., save user information to database)
                print('Saving user information: ');
                print('Name: $name');
                print('Email: $email');
                print('Mobile Number: $mobileNumber');
                print('Date of Birth: $dateOfBirth');
                print('Address: $address');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SelectGender()),
                );

                // Implement your logic to save data (e.g., using a database or API)
              },
              child: const Text('Continue'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.pink, // Set text color
                padding: const EdgeInsets.all(16.0), // Set padding
                shape: const StadiumBorder(),
                
                minimumSize: const Size(500, 50), // Set button shape
              ),
            ),
          ],
        ),
      ),
    );
  }
}
