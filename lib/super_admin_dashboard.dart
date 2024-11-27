import 'package:flutter/material.dart';

class SuperAdminDashboard extends StatelessWidget {
  const SuperAdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Super Admin Dashboard'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Super Admin Dashboard',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
