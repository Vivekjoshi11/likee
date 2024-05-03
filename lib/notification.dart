// ignore: file_names
import 'package:flutter/material.dart';

class NotiFication extends StatefulWidget {
  const NotiFication({super.key});

  @override
  State<NotiFication> createState() => _NotiFicationState();
}

class _NotiFicationState extends State<NotiFication> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body:const Center(
        child: Text('No Notifications yet'),
      ) 
      // ListView(
        // children: const [
        //   NotificationItem(
        //     title: 'Ketty liked your photo',
        //     timeAgo: 'Today, February 14, 2023',
        //   ),
        //   NotificationItem(
        //     title: 'John commented on your photo',
        //     timeAgo: '15 min ago',
        //   ),
        //   NotificationItem(
        //     title: 'Ketty liked your photo',
        //     timeAgo: 'Yesterday',
        //   ),
        //   NotificationItem(
        //     title: 'Smith commented on your photo',
        //     timeAgo: '1 day ago',
        //   ),
        //   NotificationItem(
        //     title: 'Merry liked your photo',
        //     timeAgo: '1 day ago',
        //   ),
        // ],
      // ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String timeAgo;

  const NotificationItem({required this.title, required this.timeAgo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16.0),
          ),
          const Spacer(),
          Text(
            timeAgo,
            style: const TextStyle(fontSize: 12.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}