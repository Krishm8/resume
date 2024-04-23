import 'package:flutter/material.dart';
import 'package:resume/util.dart';

class technicalPage extends StatefulWidget {
  const technicalPage({super.key});

  @override
  State<technicalPage> createState() => _technicalPageState();
}

class _technicalPageState extends State<technicalPage> {
  List<TextEditingController> skill = [];


  @override
  void initState() {
    super.initState();
    for (var element in resume.mySkill) {
      skill.add(TextEditingController(text: element));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Technical Page",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.blue,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Enter your skill",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: skill.map((e) {
                      return Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: e,
                              decoration: InputDecoration(
                                hintText: "Enter your skill",
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              skill.remove(e);
                              setState(() {});
                            },
                            child: Icon(
                              Icons.delete_outline,
                              size: 35,
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                        foregroundColor: MaterialStatePropertyAll(Colors.white)),
                    onPressed: () {
                      skill.add(TextEditingController());
                      setState(() {});
                    },
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          resume.mySkill.clear();
          for (var element in skill) {
            resume.mySkill.add(element.text);
          }
        },
      ),
    );
  }
}
