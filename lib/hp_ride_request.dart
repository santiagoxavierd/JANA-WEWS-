import 'package:flutter/material.dart';
import 'hp_passenger_looking.dart';
import 'menu_bar.dart';

class HomePageRideRequest extends StatelessWidget {
  const HomePageRideRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple, // Set background color to deepPurple
      appBar: AppBar(
        //title: Text('Ride Request'
        //style: TextStyle(color: Colors.white),),
        backgroundColor:
            Colors.transparent, // Make appbar background transparent
        iconTheme: IconThemeData(
          color: Colors.white, // Set drawer icon color to white
        ),
      ),
      drawer: const MenuBarHB(),
      body: Stack(
        children: [
          // Positioned widget for map.png
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 2,
            child: Image(
              image: AssetImage(
                  'assets/mapbare.png'), // Replace with your top image path
              fit: BoxFit.cover,
            ),
          ),
          // Positioned widget for JANA_dark.png
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                      color: Colors.grey,
                      width: 3.0), // Pink border with a thickness of 2.0
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), // Curved top-left corner
                  topRight: Radius.circular(40), // Curved top-right corner
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Commuter's Location TextField
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Commuter\'s Location',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    // Commuter's Destination TextField
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Commuter\'s Destination',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.deepPurple),
                            ),
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 20),
                                border: InputBorder.none,
                                hintText: 'Select Vehicle',
                              ),
                              isExpanded: true,
                              items: <String>[
                                'Jeepney',
                                'Tricycle',
                                'Motorcycle'
                              ].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                // Handle dropdown value change
                              },
                              dropdownColor: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.deepPurple),
                            ),
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 20),
                                border: InputBorder.none,
                                hintText: 'Select Payment Method',
                              ),
                              isExpanded: true,
                              items: <String>['Cash', 'GCash', 'Paymaya']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                // Handle dropdown value change
                              },
                              dropdownColor: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    // Next Button
                    ElevatedButton(
                      onPressed: () {
                        // Handle Next button press
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => HomePagePassengerLooking(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors
                            .deepPurple), // Set button color to deepPurple
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.white), // Set text color to white
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(vertical: 18, horizontal: 50),
                        ),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      child: const Text('Next'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
