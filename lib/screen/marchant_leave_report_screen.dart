import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:prospello_machine_task/screen/add_report_screen.dart';

class MarchantLeaveReportScreen extends StatefulWidget {
  const MarchantLeaveReportScreen({Key? key}) : super(key: key);

  @override
  State<MarchantLeaveReportScreen> createState() =>
      _MarchantLeaveReportScreenState();
}

class _MarchantLeaveReportScreenState extends State<MarchantLeaveReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              PageTransition(
                child: const AddReportScreen(),
                type: PageTransitionType.fade,
              ),
            );
          },
          child: const Text('add shop screen'),
        ),
      ),
    );
  }
}
