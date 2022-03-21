import 'package:flutter/material.dart';
import 'package:prospello_machine_task/utils/colors.dart';
import 'package:prospello_machine_task/utils/ui_helper.dart';
import 'package:prospello_machine_task/widgets/dropdown_widget.dart';
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
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // stack first child
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        // dropdown 1
                        DropdownWidget(text: 'Manager Name'),
                        // dropdown 2
                        DropdownWidget(text: 'Person Name'),
                      ],
                    ),
                    UIHelper.verticalSpaceSmall(),
                    // profile details
                    const ListTileWidget(
                      image: 'assets/images/photo.jpeg',
                      title: 'Yaqoob kc!',
                      subtitle: 'Shop name',
                    )
                  ],
                ),
              ),
            ],
          ),
          /// stack second child
          Positioned(
            // top: 130,
            child: Container(
              height: screenHeight * 0.7,
              width: screenWidth,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: const BoxDecoration(
                color: primarylight,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              child: ListView(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                // physics: const BouncingScrollPhysics(),
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          const TextFieldWidget(
                            title: 'Shop name',
                            keyboardType: TextInputType.name,
                          ),
                          UIHelper.horizontalSpaceMedium(),
                          const TextFieldWidget(
                            title: 'Location',
                            keyboardType: TextInputType.name,
                          ),
                        ],
                      ),
                      UIHelper.verticalSpaceMedium(),
                      /// second input field row
                      Row(
                        children: [
                          /// first input filed - shop name
                          const TextFieldWidget(
                            title: 'Total amount',
                            keyboardType: TextInputType.number,
                          ),
                          UIHelper.horizontalSpaceMedium(),
                          const TextFieldWidget(
                            title: 'Target',
                            keyboardType: TextInputType.name,
                          ),
                        ],
                      ),
                      UIHelper.verticalSpaceMedium(),
                      /// button for adding new shop details
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Add More'),
                            style: ElevatedButton.styleFrom(
                              onPrimary: primarylight,
                              primary: primaryDark,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.16),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Upload'),
                      style: ElevatedButton.styleFrom(
                          primary: primaryDark, onPrimary: primarylight),
                    ),
                  ),
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
      title: const Text('Add Shop'),
    );
  }
}
