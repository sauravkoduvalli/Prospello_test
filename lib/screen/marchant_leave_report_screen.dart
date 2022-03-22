import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:prospello_machine_task/components/bar%20chart/bart_chart.dart';
import 'package:prospello_machine_task/utils/colors.dart';
import 'package:prospello_machine_task/utils/ui_helper.dart';
import 'package:prospello_machine_task/widgets/dropdown_widget.dart';
import 'package:prospello_machine_task/widgets/recent_log_card_widget.dart';

class MarchantLeaveReportScreen extends StatefulWidget {
  const MarchantLeaveReportScreen({Key? key}) : super(key: key);

  @override
  State<MarchantLeaveReportScreen> createState() =>
      _MarchantLeaveReportScreenState();
}

class _MarchantLeaveReportScreenState extends State<MarchantLeaveReportScreen> {
  final List<String> toggleLabels = ['Weekly', 'Monthly', 'All Time'];
  int toggleCounter = 1;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: screenHeight / 1.8,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  child: Column(
                    children: [
                      Row(
                        children: const [DropdownWidget(text: 'Person Name')],
                      ),
                      UIHelper.verticalSpaceMedium(),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    color: primarylight,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    // shrinkWrap: true,
                    // physics: const BouncingScrollPhysics(),
                    children: [
                      SizedBox(height: screenHeight * 0.15),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Download Report'),
                          style: ElevatedButton.styleFrom(
                              primary: primaryDark,
                              onPrimary: primarylight,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
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
                                        borderRadius:
                                            BorderRadius.circular(40))),
                              ),
                            ),
                          ),
                          UIHelper.horizontalSpaceMedium(),
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: OutlinedButton(
                                onPressed: () {},
                                child: const Text(
                                  'Payment Breakdown',
                                  textAlign: TextAlign.center,
                                ),
                                style: OutlinedButton.styleFrom(
                                  primary: primaryDark,
                                  backgroundColor: primarylight,
                                  side: const BorderSide(color: primaryDark),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                ),
                              ),
                            ),
                          ),
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
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
                                    overflow: TextOverflow.ellipsis,
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
                            style: TextStyle(
                                color: Colors.grey, letterSpacing: 0.7),
                          ),
                        ],
                      ),
                      UIHelper.verticalSpaceMedium(),
                      const RecentLogCardWidget(
                        title: 'Wednesday',
                        subtitle: '15 March 2020',
                        time: '8:52 Hrs',
                      ),
                      UIHelper.verticalSpaceMedium(),
                      const RecentLogCardWidget(
                        title: 'Tuesday',
                        subtitle: '15 March 2020',
                        time: '3:52 Hrs',
                      ),
                    ],
                  ),
                ),
              ],
            ),

            /// Overall performance barchart card view
            Positioned(
              top: screenHeight * 0.08,
              bottom: screenHeight * 0.9,
              right: 0,
              left: 0,
              child: DefaultTabController(
                length: 3,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(12),
                  // height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: primarylight,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Overall Perfomance',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: primaryDark,
                            ),
                          ),
                          UIHelper.verticalSpaceExtraSmall(),
                          const Text(
                            'Jan 6 - Jan 12',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: primaryDark,
                              letterSpacing: 0.2,
                            ),
                          ),
                          UIHelper.verticalSpaceSmall(),

                          /// Tabbar heads
                          const TabbarWidget(),
                        ],
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Center(
                        child: SizedBox(
                          width: screenWidth * 0.8,
                          height: screenHeight * 0.25,
                          child: const BartChartWidget(),
                        ),
                      ),
                      Column(
                        children: [
                          const Divider(color: Colors.black54),
                          ListTile(
                            title: const Text('Complete View'),
                            subtitle:
                                const Text('View your complete view of leaves'),
                            trailing: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.amber.shade100,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.amberAccent.shade700,
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
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

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(25)),
        child: TabBar(
          padding: const EdgeInsets.all(3),
          automaticIndicatorColorAdjustment: true,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black54,
          indicator: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
          ),
          tabs: const [
            Tab(
              text: 'Weekly',
            ),
            Tab(
              text: 'Monthly',
            ),
            Tab(
              text: 'All Time',
            ),
          ],
        ),
      ),
    );
  }
}
