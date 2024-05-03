import 'package:flutter/material.dart';

class Privacypolicy extends StatefulWidget {
  const Privacypolicy({super.key});

  @override
  State<Privacypolicy> createState() => _PrivacypolicyState();
}

class _PrivacypolicyState extends State<Privacypolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Terms and Conditions')),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Last Updated : March 31, 2022",
                style: TextStyle(color: Colors.grey),
                // SizedBox(height: 24),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'please read these terms of services, carefully before using out app operated by us.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Privacy Policy',
                style: TextStyle(
                    color: Color.fromARGB(255, 241, 95, 138),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'It is a long established fact that a readable content of a page when looking at its layout. the point of using. Lorem Ipsum is that it has a more or less normal distribution of letters, as opposed to using Lorem Ipsum is that it has a more or less normal distribution of letters, as opposed to using .',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
