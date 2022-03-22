import 'package:flutter/material.dart';
import 'package:prospello_machine_task/screen/add_report_screen.dart';
import 'package:prospello_machine_task/screen/marchant_leave_report_screen.dart';
import 'package:prospello_machine_task/utils/colors.dart';

class BottomNavbarWidget extends StatefulWidget {
  const BottomNavbarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  int selectedIndex = 0;

  List<Widget> screens = const [
    MarchantLeaveReportScreen(),
    AddReportScreen(),
    AddReportScreen(),
    AddReportScreen(),
  ];

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    selectedIndex = 0;
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            selectedItemColor: primaryDark,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedFontSize: 13,
            unselectedFontSize: 13,
            // elevation: 10,
            onTap: onTap,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 28),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_activity_outlined, size: 28),
                label: 'Products',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.verified_user_outlined, size: 24),
                label: 'Attendance',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined, size: 26),
                label: 'Earnings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
