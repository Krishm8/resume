import 'package:flutter/material.dart';

class declarationPage extends StatefulWidget {
  const declarationPage({super.key});

  @override
  State<declarationPage> createState() => _declarationPageState();
}

class _declarationPageState extends State<declarationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("declaration"),),);
  }
}
