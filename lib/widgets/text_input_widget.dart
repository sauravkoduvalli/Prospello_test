import 'package:flutter/material.dart';
import 'package:prospello_machine_task/utils/colors.dart';
import 'package:prospello_machine_task/utils/ui_helper.dart';

class TextFieldWidget extends StatelessWidget {
  final String title;
  const TextFieldWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(color: primaryDark),
          ),
          UIHelper.verticalSpaceSmall(),
          TextFormField(
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              fillColor: Colors.grey.shade200,
              filled: true,
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(5.0),
                ),
                borderSide: BorderSide(color: Colors.grey.shade200),
              ),
            ),
            // validator: (value) {
            //   if (value == null) {
            //     return "please enter amount";
            //   }
            //   return null;
            // },
          ),
        ],
      ),
    );
  }
}
