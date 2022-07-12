import 'package:flutter/material.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body:SafeArea(
            child: Center(
                child: Text('Coming Soon',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                )))
    );
  }
}
