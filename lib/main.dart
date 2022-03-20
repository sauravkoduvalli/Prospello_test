import 'package:flutter/material.dart';
import 'package:prospello_machine_task/screen/marchant_leave_report_screen.dart';
import 'package:prospello_machine_task/utils/colors.dart';
import 'package:prospello_machine_task/widgets/bottom_navbar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prospello Task',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: const BottomNavbarWidget(),
    );
  }

  ThemeData appTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: primaryDark,
      
    );
  }
}
