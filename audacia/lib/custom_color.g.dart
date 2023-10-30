import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

const positive = Color(0xFF21DB2A);
const negative = Color(0xFFD7231D);
const graph#1 = Color(0xFF8D1DD7);
const graph#2 = Color(0xFFD71DA6);
const neutral#1 = Color(0xFFA6D71D);


CustomColors lightCustomColors = const CustomColors(
  sourcePositive: Color(0xFF21DB2A),
  positive: Color(0xFF006E0A),
  onPositive: Color(0xFFFFFFFF),
  positiveContainer: Color(0xFF75FF67),
  onPositiveContainer: Color(0xFF002201),
  sourceNegative: Color(0xFFD7231D),
  negative: Color(0xFFBF090D),
  onNegative: Color(0xFFFFFFFF),
  negativeContainer: Color(0xFFFFDAD5),
  onNegativeContainer: Color(0xFF410001),
  sourceGraph#1: Color(0xFF8D1DD7),
  graph#1: Color(0xFF8C1BD6),
  onGraph#1: Color(0xFFFFFFFF),
  graph#1Container: Color(0xFFF3DAFF),
  onGraph#1Container: Color(0xFF2E004D),
  sourceGraph#2: Color(0xFFD71DA6),
  graph#2: Color(0xFFB20088),
  onGraph#2: Color(0xFFFFFFFF),
  graph#2Container: Color(0xFFFFD8EB),
  onGraph#2Container: Color(0xFF3C002C),
  sourceNeutral#1: Color(0xFFA6D71D),
  neutral#1: Color(0xFF4D6700),
  onNeutral#1: Color(0xFFFFFFFF),
  neutral#1Container: Color(0xFFC1F43E),
  onNeutral#1Container: Color(0xFF151F00),
);

CustomColors darkCustomColors = const CustomColors(
  sourcePositive: Color(0xFF21DB2A),
  positive: Color(0xFF32E534),
  onPositive: Color(0xFF003A02),
  positiveContainer: Color(0xFF005305),
  onPositiveContainer: Color(0xFF75FF67),
  sourceNegative: Color(0xFFD7231D),
  negative: Color(0xFFFFB4A9),
  onNegative: Color(0xFF690002),
  negativeContainer: Color(0xFF930005),
  onNegativeContainer: Color(0xFFFFDAD5),
  sourceGraph#1: Color(0xFF8D1DD7),
  graph#1: Color(0xFFE2B6FF),
  onGraph#1: Color(0xFF4D007B),
  graph#1Container: Color(0xFF6D00AC),
  onGraph#1Container: Color(0xFFF3DAFF),
  sourceGraph#2: Color(0xFFD71DA6),
  graph#2: Color(0xFFFFAEDC),
  onGraph#2: Color(0xFF610049),
  graph#2Container: Color(0xFF880068),
  onGraph#2Container: Color(0xFFFFD8EB),
  sourceNeutral#1: Color(0xFFA6D71D),
  neutral#1: Color(0xFFA6D71D),
  onNeutral#1: Color(0xFF263500),
  neutral#1Container: Color(0xFF394D00),
  onNeutral#1Container: Color(0xFFC1F43E),
);



/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourcePositive,
    required this.positive,
    required this.onPositive,
    required this.positiveContainer,
    required this.onPositiveContainer,
    required this.sourceNegative,
    required this.negative,
    required this.onNegative,
    required this.negativeContainer,
    required this.onNegativeContainer,
    required this.sourceGraph#1,
    required this.graph#1,
    required this.onGraph#1,
    required this.graph#1Container,
    required this.onGraph#1Container,
    required this.sourceGraph#2,
    required this.graph#2,
    required this.onGraph#2,
    required this.graph#2Container,
    required this.onGraph#2Container,
    required this.sourceNeutral#1,
    required this.neutral#1,
    required this.onNeutral#1,
    required this.neutral#1Container,
    required this.onNeutral#1Container,
  });

  final Color? sourcePositive;
  final Color? positive;
  final Color? onPositive;
  final Color? positiveContainer;
  final Color? onPositiveContainer;
  final Color? sourceNegative;
  final Color? negative;
  final Color? onNegative;
  final Color? negativeContainer;
  final Color? onNegativeContainer;
  final Color? sourceGraph#1;
  final Color? graph#1;
  final Color? onGraph#1;
  final Color? graph#1Container;
  final Color? onGraph#1Container;
  final Color? sourceGraph#2;
  final Color? graph#2;
  final Color? onGraph#2;
  final Color? graph#2Container;
  final Color? onGraph#2Container;
  final Color? sourceNeutral#1;
  final Color? neutral#1;
  final Color? onNeutral#1;
  final Color? neutral#1Container;
  final Color? onNeutral#1Container;

  @override
  CustomColors copyWith({
    Color? sourcePositive,
    Color? positive,
    Color? onPositive,
    Color? positiveContainer,
    Color? onPositiveContainer,
    Color? sourceNegative,
    Color? negative,
    Color? onNegative,
    Color? negativeContainer,
    Color? onNegativeContainer,
    Color? sourceGraph#1,
    Color? graph#1,
    Color? onGraph#1,
    Color? graph#1Container,
    Color? onGraph#1Container,
    Color? sourceGraph#2,
    Color? graph#2,
    Color? onGraph#2,
    Color? graph#2Container,
    Color? onGraph#2Container,
    Color? sourceNeutral#1,
    Color? neutral#1,
    Color? onNeutral#1,
    Color? neutral#1Container,
    Color? onNeutral#1Container,
  }) {
    return CustomColors(
      sourcePositive: sourcePositive ?? this.sourcePositive,
      positive: positive ?? this.positive,
      onPositive: onPositive ?? this.onPositive,
      positiveContainer: positiveContainer ?? this.positiveContainer,
      onPositiveContainer: onPositiveContainer ?? this.onPositiveContainer,
      sourceNegative: sourceNegative ?? this.sourceNegative,
      negative: negative ?? this.negative,
      onNegative: onNegative ?? this.onNegative,
      negativeContainer: negativeContainer ?? this.negativeContainer,
      onNegativeContainer: onNegativeContainer ?? this.onNegativeContainer,
      sourceGraph#1: sourceGraph#1 ?? this.sourceGraph#1,
      graph#1: graph#1 ?? this.graph#1,
      onGraph#1: onGraph#1 ?? this.onGraph#1,
      graph#1Container: graph#1Container ?? this.graph#1Container,
      onGraph#1Container: onGraph#1Container ?? this.onGraph#1Container,
      sourceGraph#2: sourceGraph#2 ?? this.sourceGraph#2,
      graph#2: graph#2 ?? this.graph#2,
      onGraph#2: onGraph#2 ?? this.onGraph#2,
      graph#2Container: graph#2Container ?? this.graph#2Container,
      onGraph#2Container: onGraph#2Container ?? this.onGraph#2Container,
      sourceNeutral#1: sourceNeutral#1 ?? this.sourceNeutral#1,
      neutral#1: neutral#1 ?? this.neutral#1,
      onNeutral#1: onNeutral#1 ?? this.onNeutral#1,
      neutral#1Container: neutral#1Container ?? this.neutral#1Container,
      onNeutral#1Container: onNeutral#1Container ?? this.onNeutral#1Container,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourcePositive: Color.lerp(sourcePositive, other.sourcePositive, t),
      positive: Color.lerp(positive, other.positive, t),
      onPositive: Color.lerp(onPositive, other.onPositive, t),
      positiveContainer: Color.lerp(positiveContainer, other.positiveContainer, t),
      onPositiveContainer: Color.lerp(onPositiveContainer, other.onPositiveContainer, t),
      sourceNegative: Color.lerp(sourceNegative, other.sourceNegative, t),
      negative: Color.lerp(negative, other.negative, t),
      onNegative: Color.lerp(onNegative, other.onNegative, t),
      negativeContainer: Color.lerp(negativeContainer, other.negativeContainer, t),
      onNegativeContainer: Color.lerp(onNegativeContainer, other.onNegativeContainer, t),
      sourceGraph#1: Color.lerp(sourceGraph#1, other.sourceGraph#1, t),
      graph#1: Color.lerp(graph#1, other.graph#1, t),
      onGraph#1: Color.lerp(onGraph#1, other.onGraph#1, t),
      graph#1Container: Color.lerp(graph#1Container, other.graph#1Container, t),
      onGraph#1Container: Color.lerp(onGraph#1Container, other.onGraph#1Container, t),
      sourceGraph#2: Color.lerp(sourceGraph#2, other.sourceGraph#2, t),
      graph#2: Color.lerp(graph#2, other.graph#2, t),
      onGraph#2: Color.lerp(onGraph#2, other.onGraph#2, t),
      graph#2Container: Color.lerp(graph#2Container, other.graph#2Container, t),
      onGraph#2Container: Color.lerp(onGraph#2Container, other.onGraph#2Container, t),
      sourceNeutral#1: Color.lerp(sourceNeutral#1, other.sourceNeutral#1, t),
      neutral#1: Color.lerp(neutral#1, other.neutral#1, t),
      onNeutral#1: Color.lerp(onNeutral#1, other.onNeutral#1, t),
      neutral#1Container: Color.lerp(neutral#1Container, other.neutral#1Container, t),
      onNeutral#1Container: Color.lerp(onNeutral#1Container, other.onNeutral#1Container, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///   * [CustomColors.sourcePositive]
  ///   * [CustomColors.positive]
  ///   * [CustomColors.onPositive]
  ///   * [CustomColors.positiveContainer]
  ///   * [CustomColors.onPositiveContainer]
  ///   * [CustomColors.sourceNegative]
  ///   * [CustomColors.negative]
  ///   * [CustomColors.onNegative]
  ///   * [CustomColors.negativeContainer]
  ///   * [CustomColors.onNegativeContainer]
  ///   * [CustomColors.sourceGraph#1]
  ///   * [CustomColors.graph#1]
  ///   * [CustomColors.onGraph#1]
  ///   * [CustomColors.graph#1Container]
  ///   * [CustomColors.onGraph#1Container]
  ///   * [CustomColors.sourceGraph#2]
  ///   * [CustomColors.graph#2]
  ///   * [CustomColors.onGraph#2]
  ///   * [CustomColors.graph#2Container]
  ///   * [CustomColors.onGraph#2Container]
  ///   * [CustomColors.sourceNeutral#1]
  ///   * [CustomColors.neutral#1]
  ///   * [CustomColors.onNeutral#1]
  ///   * [CustomColors.neutral#1Container]
  ///   * [CustomColors.onNeutral#1Container]
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(
      sourcePositive: sourcePositive!.harmonizeWith(dynamic.primary),
      positive: positive!.harmonizeWith(dynamic.primary),
      onPositive: onPositive!.harmonizeWith(dynamic.primary),
      positiveContainer: positiveContainer!.harmonizeWith(dynamic.primary),
      onPositiveContainer: onPositiveContainer!.harmonizeWith(dynamic.primary),
      sourceNegative: sourceNegative!.harmonizeWith(dynamic.primary),
      negative: negative!.harmonizeWith(dynamic.primary),
      onNegative: onNegative!.harmonizeWith(dynamic.primary),
      negativeContainer: negativeContainer!.harmonizeWith(dynamic.primary),
      onNegativeContainer: onNegativeContainer!.harmonizeWith(dynamic.primary),
      sourceGraph#1: sourceGraph#1!.harmonizeWith(dynamic.primary),
      graph#1: graph#1!.harmonizeWith(dynamic.primary),
      onGraph#1: onGraph#1!.harmonizeWith(dynamic.primary),
      graph#1Container: graph#1Container!.harmonizeWith(dynamic.primary),
      onGraph#1Container: onGraph#1Container!.harmonizeWith(dynamic.primary),
      sourceGraph#2: sourceGraph#2!.harmonizeWith(dynamic.primary),
      graph#2: graph#2!.harmonizeWith(dynamic.primary),
      onGraph#2: onGraph#2!.harmonizeWith(dynamic.primary),
      graph#2Container: graph#2Container!.harmonizeWith(dynamic.primary),
      onGraph#2Container: onGraph#2Container!.harmonizeWith(dynamic.primary),
      sourceNeutral#1: sourceNeutral#1!.harmonizeWith(dynamic.primary),
      neutral#1: neutral#1!.harmonizeWith(dynamic.primary),
      onNeutral#1: onNeutral#1!.harmonizeWith(dynamic.primary),
      neutral#1Container: neutral#1Container!.harmonizeWith(dynamic.primary),
      onNeutral#1Container: onNeutral#1Container!.harmonizeWith(dynamic.primary),
    );
  }
}