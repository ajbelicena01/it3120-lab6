import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 6 - Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF912f56)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'IT3120 - Lab 6'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // centers vertically
            children: [
              Text(
                'Angel Jen Belicena',
                style: TextStyle(
                  color: Color(0xFF007e5d),
                  fontFamily: 'poppins',
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Hannah Shayne Bayogos',
                style: TextStyle(
                  color: Color(0xFF19305C),
                  fontFamily: 'bebas',
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
    );
  }
}
