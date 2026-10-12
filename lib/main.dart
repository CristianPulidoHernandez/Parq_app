import 'package:flutter/material.dart';
import 'screens/explore_screen.dart';

void main() {
  runApp(const ParqApp());
}

class ParqApp extends StatelessWidget {
  const ParqApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parq - Renta de Estacionamientos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const ExploreScreen(),
    );
  }
}