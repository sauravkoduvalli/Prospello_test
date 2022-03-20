import 'package:flutter/material.dart';
import 'package:prospello_machine_task/utils/colors.dart';
import 'package:prospello_machine_task/utils/ui_helper.dart';
import 'package:prospello_machine_task/widgets/listtile_widget.dart';
import 'package:prospello_machine_task/widgets/text_input_widget.dart';

class AddReportScreen extends StatefulWidget {
  const AddReportScreen({Key? key}) : super(key: key);

  @override
  State<AddReportScreen> createState() => _AddReportScreenState();
}

class _AddReportScreenState extends State<AddReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: const [
                    // dropdown 1
                    // dropdown 2
                  ],
                ),
                // profile details
                const ListTileWidget(image: 'assets/images/photo.jpeg', title: 'Yaqoob kc!', subtitle: 'Shop name',)
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          /// first input filed - shop name
                          const TextFieldWidget(title: 'Shop name'),
                          UIHelper.horizontalSpaceMedium(),
                          const TextFieldWidget(title: 'Location'),
                        ],
                      ),
                      UIHelper.verticalSpaceLarge(),
                      Row(
                        children: [
                          /// first input filed - shop name
                          const TextFieldWidget(title: 'Total amount'),
                          UIHelper.horizontalSpaceMedium(),
                          const TextFieldWidget(title: 'Target'),
                        ],
                      ),
                      UIHelper.verticalSpaceLarge(),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add More'),
                        style: ElevatedButton.styleFrom(
                          onPrimary: primarylight,
                          primary: primaryDark,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 5,
                        ),
                      ),
                    ],
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: primarylight,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                ),
              ),
            ],
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
            child: Icon(Icons.arrow_back_ios, color: primaryDark, size: 20),
          ),
        ),
      ),
      title: const Text('Add Shop'),
    );
  }
}

