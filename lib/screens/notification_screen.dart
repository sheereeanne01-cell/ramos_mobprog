
import 'package:flutter/material.dart';
import 'package:quiatchon_mobprog/widgets/notification.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  void _openNotification(
    BuildContext context,
    String userName,
    String action,
    String postContent,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(userName),
          content: Text('$action $postContent'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NotificationItem(
          userName: 'BATUMBAKAL',
          action: 'Posted:',
          postContent: 'NO TO PAX SILICA NGANIIII.',
          date: '1 minute ago',
          onTap: () => _openNotification(
            context, 'BATUMBAKAL', 'Posted:',
            'NO TO PAX SILICA NGANIIII.',
          ),
        ),

        NotificationItem(
          userName: 'xo_shiri',
          action: 'Commented on your post:',
          postContent: 'no to pax silica hey #ano na government?',
          date: '5 minutes ago',
          onTap: () => _openNotification(
            context, 'xo_shiri', 'Commented on your post:',
            'no to pax silica hey #ano na government?',
          ),
        ),

        NotificationItem(
          userName: 'Clark',
          action: 'Posted:',
          postContent: 'Love the scenery here!',
          date: '10 minutes ago',
          onTap: () => _openNotification(
            context, 'Clark', 'Posted:',
            'Love the scenery here!',
          ),
        ),

        NotificationItem(
          userName: 'Alex',
          action: 'Posted:',
          postContent: 'Keep moving forward.',
          date: '15 minutes ago',
          onTap: () => _openNotification(
            context, 'Alex', 'Posted:',
            'Keep moving forward.',
          ),
        ),

        NotificationItem(
          userName: 'Taylor',
          action: 'Posted:',
          postContent: 'Good vibes and good memories!',
          date: '20 minutes ago',
          onTap: () => _openNotification(
            context, 'Taylor', 'Posted:',
            'Good vibes and good memories!',
          ),
        ),

        NotificationItem(
          userName: 'Chris',
          action: 'Commented on your post:',
          postContent: 'Must watch to guys!',
          date: '30 minutes ago',
          onTap: () => _openNotification(
            context, 'Chris', 'Commented on your post:',
            'Must watch to guys!',
          ),
        ),

        NotificationItem(
          userName: 'Jamie',
          action: 'Posted:',
          postContent: 'Another day, another opportunity.',
          date: '40 minutes ago',
          onTap: () => _openNotification(
            context, 'Jamie', 'Posted:',
            'Another day, another opportunity.',
          ),
        ),

        NotificationItem(
          userName: 'Morgan',
          action: 'Posted:',
          postContent: '#COMPLETEFAMILY!!!!',
          date: '1 hour ago',
          onTap: () => _openNotification(
            context, 'Morgan', 'Posted:',
            '#COMPLETEFAMILY!!!!',
          ),
        ),

        NotificationItem(
          userName: 'Jordan',
          action: 'Shared your post:',
          postContent: 'NO TO PAX SILICA!',
          date: '1 hour ago',
          onTap: () => _openNotification(
            context, 'Jordan', 'Shared your post:',
            'NO TO PAX SILICA!',
          ),
        ),

        NotificationItem(
          userName: 'Sam',
          action: 'Commented on your post:',
          postContent: 'Nice picture!',
          date: '2 hours ago',
          onTap: () => _openNotification(
            context, 'Sam', 'Commented on your post:',
            'Nice picture!',
          ),
        ),

        NotificationItem(
          userName: 'Riley',
          action: 'Posted:',
          postContent: 'A little progress every day.',
          date: '3 hours ago',
          onTap: () => _openNotification(
            context, 'Riley', 'Posted:',
            'A little progress every day.',
          ),
        ),

        NotificationItem(
          userName: 'Casey',
          action: 'Shared your post:',
          postContent: 'Keep moving forward.',
          date: '4 hours ago',
          onTap: () => _openNotification(
            context, 'Casey', 'Shared your post:',
            'Keep moving forward.',
          ),
        ),

        NotificationItem(
          userName: 'Avery',
          action: 'Commented on your post:',
          postContent: 'I totally agree!',
          date: '5 hours ago',
          onTap: () => _openNotification(
            context, 'Avery', 'Commented on your post:',
            'I totally agree!',
          ),
        ),

        NotificationItem(
          userName: 'Drew',
          action: 'Posted:',
          postContent: 'Enjoying the little things.',
          date: '6 hours ago',
          onTap: () => _openNotification(
            context, 'Drew', 'Posted:',
            'Enjoying the little things.',
          ),
        ),

        NotificationItem(
          userName: 'Morgan',
          action: 'Commented on your post:',
          postContent: 'Beautiful!',
          date: 'Yesterday',
          onTap: () => _openNotification(
            context, 'Morgan', 'Commented on your post:',
            'Beautiful!',
          ),
        ),

        NotificationItem(
          userName: 'Taylor',
          action: 'Shared your post:',
          postContent: 'NO TO PAX SILICA NGANIIIIII.',
          date: 'Yesterday',
          onTap: () => _openNotification(
            context, 'Taylor', 'Shared your post:',
            'NO TO PAX SILICA NGANIIIIII.',
          ),
        ),

        NotificationItem(
          userName: 'Jamie',
          action: 'Commented on your post:',
          postContent: 'Keep it up!',
          date: 'Yesterday',
          onTap: () => _openNotification(
            context, 'Jamie', 'Commented on your post:',
            'Keep it up!',
          ),
        ),

        NotificationItem(
          userName: 'Chris',
          action: 'Posted:',
          postContent: 'New day, new opportunities.',
          date: 'Yesterday',
          onTap: () => _openNotification(
            context, 'Chris', 'Posted:',
            'New day, new opportunities.',
          ),
        ),

        NotificationItem(
          userName: 'Alex',
          action: 'Shared your post:',
          postContent: 'Good vibes and good memories!',
          date: 'Yesterday',
          onTap: () => _openNotification(
            context, 'Alex', 'Shared your post:',
            'Good vibes and good memories!',
          ),
        ),

        NotificationItem(
          userName: 'Jordan',
          action: 'Commented on your post:',
          postContent: 'Amazing work!',
          date: 'Yesterday',
          onTap: () => _openNotification(
            context, 'Jordan', 'Commented on your post:',
            'Amazing work!',
          ),
        ),
      ],
    );
  }
}
