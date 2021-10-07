import 'package:flutter/material.dart';

ThemeData theme(BuildContext context) {
  return ThemeData(
    primaryColor: const Color(0xff9BE2DE),
    sliderTheme: SliderThemeData(
      trackHeight: 1,
      activeTrackColor: Colors.black,
      inactiveTrackColor: Colors.grey[400],
      thumbColor: Colors.black,
    ),
  );
}

Color kDeleteIconColor = Colors.red;
Color kScoreIconColor = const Color(0xff0897FF);
Color kShareIconColor = Colors.green;
Color kImageIconColor = Colors.white;
Color kTapCircleColor = const Color(0xffFF0404).withOpacity(0.56);
