import 'package:flutter/material.dart';

class projectsPage extends StatefulWidget {
  const projectsPage({super.key});

  @override
  State<projectsPage> createState() => _projectsPageState();
}

class _projectsPageState extends State<projectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Projects Page"),),);
  }
}
