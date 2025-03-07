import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Lab 3: Layout Basics",
            style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.indigo, // Changed to indigo
        ),
        backgroundColor: Colors.grey[100], // Lighter grey background
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12), // Reduced padding
              margin: const EdgeInsets.all(20), // Reduced margin
              decoration: BoxDecoration(
                color: Colors.deepOrange, // Changed to deep orange
                borderRadius: BorderRadius.circular(16), // Increased border radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(4, 4),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  "Welcome to Flutter!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20, // Increased font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // Increased spacing
            Container(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24), // Increased padding
              decoration: BoxDecoration(
                color: Colors.teal, // Changed to teal
                borderRadius: BorderRadius.circular(12), // Increased border radius
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround, // Changed to spaceAround
                children: const [
                  Text(
                    "Left Text",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18, // Increased font size
                    ),
                  ),
                  Text(
                    "Right Text",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18, // Increased font size
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
