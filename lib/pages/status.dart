import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage('assets/background.jpg'),
      )),
    );
  }
}
