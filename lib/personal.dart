// ignore_for_file: prefer_const_constructors

import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume/util.dart';

class PersonalDetail extends StatefulWidget {
  const PersonalDetail({super.key});

  @override
  State<PersonalDetail> createState() => _PersonalDetailState();
}

class _PersonalDetailState extends State<PersonalDetail> {
  bool ischeck1 = false;
  bool ischeck2 = false;
  bool ischeck3 = false;
  String? maritalStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        foregroundColor: Colors.white,
        title: Text(
          "Personal Detail",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ], color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "DOB",
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "DD/MM/YYYY",
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Marital Status",
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
            RadioListTile(
              value: "single",
              groupValue: maritalStatus,
              onChanged: (value) {
                maritalStatus = value;
                setState(() {});
              },
              title: Text("Single",style: TextStyle(fontSize: 20),),
            ),
            RadioListTile(
              value: "Married",
              groupValue: maritalStatus,
              onChanged: (value) {
                maritalStatus = value;
                setState(() {});
              },
              title: Text("Married",style: TextStyle(fontSize: 20),),
            ),
            Text(
              "Language Known",
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("English",style: TextStyle(fontSize: 20),),
              value: ischeck1,
              onChanged: (value) {
                ischeck1 = value ?? false;
                setState(() {});
              },
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Hindi",style: TextStyle(fontSize: 20),),
              value: ischeck2,
              onChanged: (value) {
                ischeck2 = value ?? false;
                setState(() {});
              },
            ),CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Gujarati",style: TextStyle(fontSize: 20),),
              value: ischeck3,
              onChanged: (value) {
                ischeck3 = value ?? false;
                setState(() {});
              },
            ),
            Text(
              "Nationality",
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Indian",
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
