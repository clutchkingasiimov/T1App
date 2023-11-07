import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'color_schemes.g.dart';

//Insulin Tracker class
class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColorScheme.background,
      appBar: AppBar(
        title: const Text('Statistics'),
        foregroundColor: lightColorScheme.onBackground,
        backgroundColor: lightColorScheme.surfaceVariant,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      body: const Center(
          child: Column(
        children: <Widget>[
          // Sets the height of the first button to be 48 pixels below
          SizedBox(height: 48.0),
          PageButtons('Insulin Statistics'),
          SizedBox(height: 20.0),
          PageButtons('Carb Statistics'),
          SizedBox(height: 20.0),
          PageButtons('Mood Statistics'),
          SizedBox(height: 20.0),
          PageButtons('Blood Glucose Statistics')
        ],
      )),
    );
  }
}

class PageButtons extends StatelessWidget {
  final String buttonName;

  const PageButtons(this.buttonName, {super.key}); //Constructor

  @override
  Widget build(BuildContext context) {
    // FilledButton
    return ElevatedButton(
        onPressed: () {},
        //Set the ButtonStyle for the size and colour
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size(248, 62)),
            backgroundColor:
                MaterialStateProperty.all(lightColorScheme.secondaryContainer),
            // Give a shadow elevation to make the button have float elevation
            elevation: MaterialStateProperty.all<double>(4.0)),
        child: Text(buttonName,
            //Change the textstyle
            style: TextStyle(color: lightColorScheme.onSecondaryContainer)));
  }
}
