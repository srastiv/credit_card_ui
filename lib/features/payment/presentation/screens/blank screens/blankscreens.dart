import 'package:flutter/material.dart';

class NotifsScreen extends StatelessWidget {
  const NotifsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("NOTIFS"),
      ),
    );
  }
}

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("HISTORY"),
      ),
    );
  }
}
