import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'color_schemes.g.dart';
// import 'custom_color.g.dart';

void main() {
  runApp(const AudaciaApp());
}

class AudaciaApp extends StatelessWidget {
  const AudaciaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        ColorScheme lightScheme;
        ColorScheme darkScheme;

        if (lightDynamic != null && darkDynamic != null) {
          lightScheme = lightDynamic.harmonized();
          // lightCustomColors = lightCustomColors.harmonized(lightScheme);

          // Repeat for the dark color scheme.
          darkScheme = darkDynamic.harmonized();
          // darkCustomColors = darkCustomColors.harmonized(darkScheme);
        } else {
          // Otherwise, use fallback schemes.
          lightScheme = lightColorScheme;
          darkScheme = darkColorScheme;
        }

        return MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: lightScheme,
            // extensions: [lightCustomColors],
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: darkScheme,
            // extensions: [darkCustomColors],
          ),
          home: const InsulinTracker(),
        );
      },
    );
  }
}
class InsulinTracker extends StatelessWidget {
  const InsulinTracker({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: const InsulinChoice(),
      appBar: AppBar(
        title: const Text('Insulin Tracker'),
        foregroundColor: lightColorScheme.onBackground,
        backgroundColor: lightColorScheme.surfaceVariant,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip
            );
          },
        ),
      ),
    );
  }
}


// Class to show the Segmented Button for Basal and Bolus
enum InsulinType {bolus, basal}

class InsulinChoice extends StatefulWidget {
  const InsulinChoice({super.key});

  @override
  State<InsulinChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<InsulinChoice> {
  InsulinType choice = InsulinType.bolus;

  @override 
  Widget build(BuildContext context) {
    return SegmentedButton<InsulinType>
    (segments: const <ButtonSegment<InsulinType>>[
      ButtonSegment<InsulinType>(
        value: InsulinType.bolus,
        label: Text('Bolus')
      ),
      ButtonSegment<InsulinType>(
        value: InsulinType.basal,
        label: Text('Basal')
      )
    ],
    selected: <InsulinType>{choice},
    onSelectionChanged: (Set<InsulinType> newSelection){
      setState(() {
        choice = newSelection.first;
      });

    },);
  }
}

