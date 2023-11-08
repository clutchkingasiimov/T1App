import 'package:audacia/color_schemes.g.dart';
import 'package:flutter/material.dart';

class InsulinTracker extends StatelessWidget {
  const InsulinTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColorScheme.background,
      appBar: AppBar(
        title: const Text('Insulin Tracker'),
        foregroundColor: lightColorScheme.onBackground,
        backgroundColor: lightColorScheme.surfaceVariant,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: (){
                Navigator.pop(context);
              }, icon: const Icon(Icons.arrow_back));
          }),
      ),
      body: const Center(
        child: Text('Page in development'),
      ),
    );
  }
}