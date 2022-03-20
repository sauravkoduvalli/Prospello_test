import 'package:flutter/material.dart';
import 'package:prospello_machine_task/utils/colors.dart';

class ListTileWidget extends StatelessWidget {
  final String image, title, subtitle;
  const ListTileWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      title: Text(
        title,
        style:
            const TextStyle(color: primarylight, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: primarylight),
      ),
    );
  }
}
