import 'package:flutter/material.dart';
import 'sign_up_page.dart';
import 'hp_trip_details.dart'; // Import the new page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      routes: {
        '/signUp': (context) => const SignUpPage(), // Define the sign-up route
        '/tripDetails': (context) =>
            const HomePageTripDetails(), // Define the trip details route
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the Sign Up Page
                Navigator.of(context).pushNamed('/signUp');
              },
              child: const Text('Sign Up'),
            ),
            const SizedBox(height: 20), // Add some space between the buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the Trip Details Page
                Navigator.of(context).pushNamed('/tripDetails');
              },
              child: const Text('Trip Details'),
            ),
          ],
        ),
      ),
    );
  }
}
