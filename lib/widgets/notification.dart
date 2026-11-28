
import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final String userName;
  final String action;
  final String postContent;
  final String date;
  final VoidCallback onTap;

  const NotificationItem({
    super.key,
    required this.userName,
    required this.action,
    required this.postContent,
    required this.date,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xFFE0E0E0),
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.person,
              size: 25,
              color: Colors.black,
            ),

            const SizedBox(width: 10),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),

                  Text(
                    '$action $postContent',
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 3),

                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            const Icon(
              Icons.more_horiz,
              size: 20,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
