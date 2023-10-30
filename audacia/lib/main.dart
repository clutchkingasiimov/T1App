import 'package:flutter/material.dart';

void main() {
  runApp(const AudaciaApp());
}

class AudaciaApp extends StatelessWidget {
  const AudaciaApp({super.key});

  @override 
  Widget build(BuildContext context){
    return const MaterialApp(
      home: InsulinTracker(),
    );
  }
}

class InsulinTracker extends StatelessWidget {
  const InsulinTracker({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bolus Insulin')
      ),
    );
  }
}

