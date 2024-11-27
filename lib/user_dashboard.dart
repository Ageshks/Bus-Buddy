import 'package:flutter/material.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Dashboard'),
        actions: [
          // Logout Button at the top right of the AppBar
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              // Handle logout action here
              // For example, navigate to the login page or clear user session
              Navigator.pushReplacementNamed(
                  context, '/login'); // Assuming you have a route set for login
            },
          ),
        ],
      ),
      body: Container(
        color: const Color.fromARGB(
            255, 19, 46, 58), // Background color similar to the login page
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              // Top space for the search bar and bus routes
              const SizedBox(height: 60),

              // Search Bar to search bus routes
              Container(
                padding: const EdgeInsets.all(16.5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      255, 1, 52, 107), // Background color for form
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.2), // Shadow color with opacity
                      spreadRadius: 4, // Shadow spread
                      blurRadius: 10, // Shadow blur
                      offset: const Offset(0, 4), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Search Bar to search bus routes
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Search Bus Routes',
                        labelStyle:
                            TextStyle(color: Colors.black), // Label color
                        border: OutlineInputBorder(),
                      ),
                      style: TextStyle(color: Colors.black), // Text color
                    ),
                    const SizedBox(height: 20),
                    // Displaying Bus Routes (Placeholder for now)
                    Expanded(
                      child: ListView.builder(
                        itemCount:
                            10, // Replace with dynamic count of bus routes
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text('Bus Route ${index + 1}'),
                            subtitle: const Text('Description of the route'),
                            onTap: () {
                              // Navigate to a route details page
                              print(
                                  'Viewing details for Bus Route ${index + 1}');
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
