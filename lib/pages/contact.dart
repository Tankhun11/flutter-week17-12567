import 'package:flutter/material.dart';
import 'package:flutter_week17/home.dart';

class ContactPage extends StatelessWidget {
  final String name;//Contact
  static String id = "/contact";
  const ContactPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        centerTitle: true,
        title: const Text("ติดต่อเรา"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome To My World~~~ $name"),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(name: "หน้าแรก2x"),
                    ),
                  );
                },
                child: const Text("Go to Home"))
          ],
        ),
      ),
    );
  }
}
