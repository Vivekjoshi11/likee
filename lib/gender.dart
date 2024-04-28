import 'package:flutter/material.dart';
import 'package:likee/profileinterest.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({super.key});

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  String _selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Gender'),
      ),
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {
          setState(() {
            _selectedGender = 'male';
          });
        },
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: _selectedGender == 'male'? Colors.blue : Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Icon(
                Icons.male,
                size: 100,
                color: Colors.black,
              ),
              Text(
                'Male',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 20),
      GestureDetector(
        onTap: () {
          setState(() {
            _selectedGender = 'female';
          });
        },
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: _selectedGender == 'female'? const Color.fromARGB(255, 241,95,138) : Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Icon(
                Icons.female,
                size: 100,
                color: Colors.black,
              ),
              Text(
                'Female',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              
            ],
            
          ),
        ),
      ),
      const SizedBox(height: 100,),
        ElevatedButton(onPressed: (){
          Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profileinterest()),
                );
        }, child:  const Text('Continue'),
        style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 241,95,138), // Set text color
              padding: const EdgeInsets.all(16.0), // Set padding
              shape: const StadiumBorder(),
              minimumSize: const Size(300, 50),
              ),
        )
    ],
    
  ),
  
)
    );
  }
}