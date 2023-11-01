import 'package:audacia/color_schemes.g.dart';
import 'package:flutter/material.dart';


class MainMenuPage extends StatelessWidget{
  const MainMenuPage({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: lightColorScheme.background,
      body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 18,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          children: const <Widget>[
            ScreenCards('Insulin Tracker'),
            ScreenCards('Carb Tracker'),
            // ScreenCards('Levels Tracker'),
            ScreenCards('Mood Tracker'),
            ScreenCards('Calculators'),
            ScreenCards('Medication'),
            ScreenCards('Statistics')
            // ScreenCards('42 Factors')
          ]
        )
    );
  }
}

class ScreenCards extends StatelessWidget{
  final String buttonName;

  const ScreenCards(this.buttonName);

  @override 
  Widget build(BuildContext context){
    //Use cards to create 8 different buttons to access
    //8 different screens
    return Card(
      clipBehavior: Clip.hardEdge,
      //Card elevation height to give shadow depth
      elevation: 4.0,
      child: InkWell(splashColor: Colors.blue.withAlpha(40),
      onTap: () {},
      child: SizedBox(
        width: 155,
        height: 144,
        //
        child: Align(
          alignment: const Alignment(0.00, 0.70),
          child: Text(buttonName,
          style: const TextStyle(fontSize: 20)),
        ),
      ),
      )
    );
  }
}