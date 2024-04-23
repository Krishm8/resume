import 'package:flutter/material.dart';

class referencesPage extends StatefulWidget {
  const referencesPage({super.key});

  @override
  State<referencesPage> createState() => _referencesPageState();
}

class _referencesPageState extends State<referencesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("References Page"),),);
  }
}
