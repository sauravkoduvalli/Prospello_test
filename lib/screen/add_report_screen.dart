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
  int count = 1;
  List<AddShopWidget> shopList = [];

  void addShop() {
    setState(() {
      shopList.add(AddShopWidget(index: shopList.length));
    });
  }

  void removeShop() {
    setState(() {
      shopList.removeLast();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addShop();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // first child(Black bg part)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
            // second child (White bg part)
            Container(
              height: screenHeight * 0.7,
              width: screenWidth,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: const BoxDecoration(
                color: primarylight,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: shopList.length,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
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
                            Row(
                              children: [
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                shopList.length > 1
                                    ? Container(
                                        margin: const EdgeInsets.only(right: 8),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              // ignore: list_remove_unrelated_type
                                              removeShop();
                                              print('item removed at $index');
                                            });
                                          },
                                          child: const Text('Remove'),
                                          style: ElevatedButton.styleFrom(
                                            onPrimary: primaryDark,
                                            primary: primarylight,
                                            elevation: 5,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ),
                                      )
                                    : Container(),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      addShop();
                                      print('item added at $index');
                                    });
                                  },
                                  child: const Text('Add Shop'),
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
                            UIHelper.verticalSpaceMedium(),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Upload'),
                      style: ElevatedButton.styleFrom(
                          primary: primaryDark, onPrimary: primarylight),
                    ),
                  ),
                  const SizedBox(height: 60),
                ],
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
      title: const Text('Add Shop'),
    );
  }
}

class AddShopWidget extends StatelessWidget {
  final int? index;
  final Function? addNewShop;
  const AddShopWidget({
    Key? key,
    this.index,
    this.addNewShop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Row(
          children: [
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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                addNewShop;
              },
              child: const Text('Remove'),
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
        UIHelper.verticalSpaceMedium(),
      ],
    );
  }
}
