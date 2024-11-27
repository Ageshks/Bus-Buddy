import 'package:flutter/material.dart';
import 'login_page.dart'; // Import LoginPage for navigation back

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255), // Background color
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                  height: 60), // Adjust this value to increase/decrease space

              Container(
                padding: const EdgeInsets.all(16.5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      255, 103, 164, 229), // Form background color
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
                    Image.asset(
                      'assets/logo.png', // Path to your logo image
                      height: 200, // Set image height
                    ),
                    const SizedBox(
                        height: 20), // Spacing between image and form
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle:
                            TextStyle(color: Colors.black), // Label color
                        border: OutlineInputBorder(),
                      ),
                      style: TextStyle(color: Colors.black), // Text color
                    ),
                    const SizedBox(height: 10),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle:
                            TextStyle(color: Colors.black), // Label color
                        border: OutlineInputBorder(),
                      ),
                      style: TextStyle(color: Colors.black), // Text color
                    ),
                    const SizedBox(height: 10),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle:
                            TextStyle(color: Colors.black), // Label color
                        border: OutlineInputBorder(),
                      ),
                      style: TextStyle(color: Colors.black), // Text color
                      obscureText: true, // Obscure password
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // TODO: Handle signup
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                            255, 0, 175, 250), // Button color
                      ),
                      child: const Text('Sign Up'),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account? ',
                          style: TextStyle(color: Colors.black), // Text color
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),
                            );
                          },
                          child: const Text('Login here'),
                        ),
                      ],
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
