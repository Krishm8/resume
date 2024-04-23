import 'package:flutter/material.dart';

class achivementsPage extends StatefulWidget {
  const achivementsPage({super.key});

  @override
  State<achivementsPage> createState() => _achivementsPageState();
}

class _achivementsPageState extends State<achivementsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Achivements Page"),),);
  }
}
