import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT3120 - LAB 6 3A NT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3F51B5)),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
        ),
      ),
      home: const MyHomePage(title: 'IT3120 - Lab 6 3A NT'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F8FF),
      appBar: AppBar(
        title: Text(title),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF3F51B5),
                Color(0xFF2196F3),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        elevation: 4,
        shadowColor: Colors.black45,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildName(
                name: 'Angel Jen Belicena',
                color: const Color(0xFF007E5D),
                font: GoogleFonts.poppins,
              ),
              _buildName(
                name: 'Hannah Shayne Bayogos',
                color: const Color(0xFF19305C),
                font: GoogleFonts.bebasNeue,
              ),
              _buildName(
                name: 'Eljean Grace Barquillo',
                color: const Color(0xFF44174E),
                font: GoogleFonts.robotoSlab,
              ),
              _buildName(
                name: 'Rainnear James Barredo',
                color: const Color(0xFF8E24AA),
                font: GoogleFonts.bebasNeue,
              ),
              _buildName(
                name: 'Hanes Jedric Abiera',
                color: const Color(0xFF1C1F3B),
                font: GoogleFonts.bebasNeue,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable name builder for cleaner code
  Widget _buildName({
    required String name,
    required Color color,
    required TextStyle Function({required Color color, required double fontSize, required FontWeight fontWeight}) font,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        name,
        style: font(
          color: color,
          fontSize: 26,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
