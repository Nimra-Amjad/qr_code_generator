import 'package:flutter/material.dart';
import 'package:qr_code_generator/screens/visitor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (
      BuildContext context,
      Orientation orientation,
      ScreenType screenType,
    ) {
      return MaterialApp(
        home: VisitorScreen(),
      );
    });
  }
}
