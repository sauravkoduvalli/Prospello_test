import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:prospello_machine_task/utils/colors.dart';
import 'package:prospello_machine_task/utils/ui_helper.dart';
import 'package:prospello_machine_task/widgets/dropdown_widget.dart';

class MarchantLeaveReportScreen extends StatefulWidget {
  const MarchantLeaveReportScreen({Key? key}) : super(key: key);

  @override
  State<MarchantLeaveReportScreen> createState() =>
      _MarchantLeaveReportScreenState();
}

class _MarchantLeaveReportScreenState extends State<MarchantLeaveReportScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(),
      body: Stack(
        children: [
          // first stack child
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                height: screenHeight * 0.5,
                child: Column(
                  children: [
                    Row(
                      children: const [
                        DropdownWidget(text: 'Person Name'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          /// second child
          Positioned(
            top: screenHeight * 0.4,
            child: Container(
              width: screenWidth,
              height: screenHeight,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: primarylight,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              child: ListView(
                shrinkWrap: false,
                children: [
                  /// a button
                  ///  for downloading the report
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Download Report'),
                      style: ElevatedButton.styleFrom(
                          primary: primaryDark,
                          onPrimary: primarylight,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                    ),
                  ),
                  UIHelper.verticalSpaceMedium(),

                  /// a row container 2 buttons,
                  ///  for pay slip and payment breakdown
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Pay Slip'),
                            style: ElevatedButton.styleFrom(
                                primary: primaryDark,
                                onPrimary: primarylight,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40))),
                          ),
                        ),
                      ),
                      UIHelper.horizontalSpaceMedium(),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: const Text('Payment Breakdown'),
                            style: OutlinedButton.styleFrom(
                              primary: primaryDark,
                              backgroundColor: primarylight,
                              side: const BorderSide(color: primaryDark),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  UIHelper.verticalSpaceLarge(),

                  /// a Container or card view
                  /// for viewing on-time arrival details
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.pink.shade300,
                        borderRadius: BorderRadius.circular(10)),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircularPercentIndicator(
                          radius: 35.0,
                          lineWidth: 8.0,
                          animation: true,
                          percent: 0.76,
                          center: const Text(
                            "76%",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: primarylight,
                              fontSize: 16,
                            ),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.yellow,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'On-Time Arrival',
                              style: TextStyle(
                                color: primarylight,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            UIHelper.verticalSpaceExtraSmall(),
                            const Text(
                              'From Feb 20, 2020 to 15 Mar, 2020',
                              style: TextStyle(
                                color: primarylight,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  UIHelper.verticalSpaceMedium(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                       Text(
                        'Recent Logs',
                        style: TextStyle(color: Colors.grey, letterSpacing: 0.7),
                      ),
                    ],
                  ),
                  UIHelper.verticalSpaceMedium(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: primaryDark,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: primarylight,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Icon(Icons.arrow_back_ios, color: primaryDark, size: 18),
          ),
        ),
      ),
      title: const Text('Marchant Leave Report'),
    );
  }
}
