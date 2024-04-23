import 'package:flutter/material.dart';

class interestPage extends StatefulWidget {
  const interestPage({super.key});

  @override
  State<interestPage> createState() => _interestPageState();
}

class _interestPageState extends State<interestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Interest Page"),),);
  }
}
