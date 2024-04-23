import 'package:flutter/material.dart';
import 'package:resume/achivements.dart';
import 'package:resume/carrier.dart';
import 'package:resume/class.dart';
import 'package:resume/contactInfo.dart';
import 'package:resume/declaration.dart';
import 'package:resume/education.dart';
import 'package:resume/experiences.dart';
import 'package:resume/interest.dart';
import 'package:resume/personal.dart';
import 'package:resume/projects.dart';
import 'package:resume/references.dart';
import 'package:resume/technical.dart';
import 'package:resume/util.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => homePage(),
        "contact": (context) => ContactPage(),
        "carrier": (context) => CarrierObjective(),
        "personal": (context) => PersonalDetail(),
        "education": (context) => educationPage(),
        "experiences": (context) => experiencesPage(),
        "technical": (context) => technicalPage(),
        "interest": (context) => interestPage(),
        "projects": (context) => projectsPage(),
        "achivements": (context) => achivementsPage(),
        "references": (context) => referencesPage(),
        "declaration": (context) => declarationPage(),
      },
    ),
  );
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Resume Builder",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      drawer: NavigationDrawer(
        children: info.map(
              (e) {
            return ListTile(
              trailing: Icon(
                Icons.chevron_right,
                size: 25,
              ),
              leading: Image.asset(
                e["icon"],
                height: 25,
              ),
              title: Text(
                e["name"],
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.pushNamed(context, e["page"]);
              },
            );
          },
        ).toList(),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 10),
            height: 80,
            color: Colors.blue,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "RESUMES",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Text("My Skill"),
          Column(
            children: resume.mySkill.map((e) => Text("$e")).toList(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {

          });
        },
      ),
    );
  }
}
