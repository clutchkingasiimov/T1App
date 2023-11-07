import 'package:audacia/color_schemes.g.dart';
import 'package:flutter/material.dart';
import 'package:audacia/screens/calculators.dart';
import 'package:audacia/screens/statistics.dart';
import 'package:audacia/screens/carbTracker.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColorScheme.background,
      // Create a 2 column grid layout in the main menu
      body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 18,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          children: const <Widget>[
            // ScreenCards('Insulin Tracker', 'syringe.png', null),
            ScreenCards('Carb Tracker', 'food.png', CarbTracker()),
            ScreenCards('Calculators', 'calculator.png', Calculators()),
            ScreenCards('Statistics', 'analytics.png', Statistics()),
            // ScreenCards('Medication', 'medication.png', null),
            // ScreenCards('42 Factors', 'levels.png', null)
          ]),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.calendar_month), label: 'Calendar'),
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        indicatorColor: lightColorScheme.secondaryContainer,
        selectedIndex: 1,
      ),
    );
  }
}

//ScreenCards widget
class ScreenCards extends StatelessWidget {
  final String buttonName;
  final String imageName;
  final Widget pageName;

  //The image dimensions for the Card display
  static const double imageDim = 80.0;
  static const double cardHeight = 144;
  static const double cardWidth = 155;

  const ScreenCards(this.buttonName, this.imageName, 
    this.pageName, {super.key});

  @override
  Widget build(BuildContext context) {
    //Use cards to create 6 different buttons to access
    //6 different screens
    return Card(
      clipBehavior: Clip.hardEdge,
      color: lightColorScheme.primaryContainer,
      //Card elevation height to give shadow depth
      elevation: 2.0,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(40),
        //OnTap action
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => pageName)
          );
        },
        //Use a Stack widget to add multiple children widgets
        //This was a way to add images on the cards
        child: Stack(
          children: <Widget>[
            SizedBox(
              width: cardWidth,
              height: cardHeight,
              child: Align(
                alignment: const Alignment(0.00, 1.00),
                child: Text(buttonName,
                    style: TextStyle(
                        fontSize: 18,
                        color: lightColorScheme.onPrimaryContainer)),
              ),
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 50.0,
              child: Image.asset('lib/images/$imageName',
                  height: imageDim, width: imageDim),
            )
          ],
        ),
      ),
    );
  }
}
