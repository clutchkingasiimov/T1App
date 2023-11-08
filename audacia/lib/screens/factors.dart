import 'package:audacia/color_schemes.g.dart';
import 'package:flutter/material.dart';

class Factors extends StatelessWidget {
  const Factors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColorScheme.background,
      appBar: AppBar(
        title: const Text('42 Factors'),
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