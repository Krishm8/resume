import 'package:flutter/material.dart';

class experiencesPage extends StatefulWidget {
  const experiencesPage({super.key});

  @override
  State<experiencesPage> createState() => _experiencesPageState();
}

class _experiencesPageState extends State<experiencesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Experiences Page"),),);
  }
}
