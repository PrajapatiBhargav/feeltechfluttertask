import 'package:feeltechfluttertask/signup.dart';
import 'package:flutter/material.dart';

import 'authentication.dart';
import 'login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Welcome'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AuthenticationHelper()
              .signOut()
              .then((_) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (contex) => Login()),
          ));
        },
        tooltip: 'Logout',
        child: const Icon(Icons.logout),
      ),
    );
  }
}