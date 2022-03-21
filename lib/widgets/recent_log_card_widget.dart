import 'package:flutter/material.dart';

class RecentLogCardWidget extends StatelessWidget {
  final String title, subtitle, time;

  const RecentLogCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      child: ListTile(
        onTap: () {},
        title: Text(title),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontWeight: FontWeight.w400),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.timelapse_outlined,
              color: Colors.blue,
              size: 30,
            ),
            Text(
              time,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
