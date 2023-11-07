
import 'package:audacia/color_schemes.g.dart';
import 'package:flutter/material.dart';

class CarbTracker extends StatelessWidget {
  const CarbTracker({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: lightColorScheme.background,
      appBar: AppBar(
        title: const Text('Carb Tracker'),
        foregroundColor: lightColorScheme.onBackground,
        backgroundColor: lightColorScheme.surfaceVariant,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              icon: const Icon(Icons.arrow_back));
          },
        ),
      ),
      body: const Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 202.0),
            _MealOptionState(),
          ],
        ),
      ),
    );
  }

}

enum MealTypes {lunch, dinner, snacks} //Set dtype

class _MealOptionState extends StatefulWidget {
  const _MealOptionState({super.key});

  @override
  State<_MealOptionState> createState() => __MealOptionStateState();
}

class __MealOptionStateState extends State<_MealOptionState> {
  //Default type selected is None
  MealTypes mealView = MealTypes.lunch;

  // Color type function that changes the color state
  Color pressColor(Set<MaterialState> state){
    if (state.contains(MaterialState.selected)){
      return lightColorScheme.secondaryContainer;
    }
    return lightColorScheme.background;
  }

  @override
  Widget build(BuildContext context) {

    //First, create the SegmentedButton widget
    return SegmentedButton<MealTypes>(
      segments: const <ButtonSegment<MealTypes>>[
        ButtonSegment<MealTypes>(value: MealTypes.lunch, label: Text('Lunch')),
        ButtonSegment<MealTypes>(value: MealTypes.dinner, label: Text('Dinner')),
        ButtonSegment<MealTypes>(value: MealTypes.snacks, label: Text('Snacks'))
        ],
      //Default sellection is mealtypes.lunch 
      selected: <MealTypes>{mealView},
      onSelectionChanged: (Set<MealTypes> newSelection){
        setState(() {
          mealView = newSelection.first;
        });
      },
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(
          lightColorScheme.onSecondaryContainer
        ),
        backgroundColor: MaterialStateProperty.resolveWith(pressColor)
      ),);
  }
}