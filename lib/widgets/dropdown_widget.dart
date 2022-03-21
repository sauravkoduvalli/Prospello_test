import 'package:flutter/material.dart';
import 'package:prospello_machine_task/utils/colors.dart';
import 'package:prospello_machine_task/utils/ui_helper.dart';

class DropdownWidget extends StatelessWidget {
  final String text;
  const DropdownWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primarylight,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        child: Row(
          children: [
            Text(
              text,
              style: const TextStyle(
                color: primaryDark,
                fontWeight: FontWeight.w500,
              ),
            ),
            UIHelper.horizontalSpaceMedium(),
            const Icon(Icons.arrow_drop_down)
          ],
        ),
      ),
    );
  }
}
