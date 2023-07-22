import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return const MaterialApp(home: HomeScreen());
    });
  }
}
