// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume/util.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _PersonalDetailState();
}

class _PersonalDetailState extends State<ContactPage> {
  GlobalKey<FormState> fkey = GlobalKey<FormState>();
  int index = 0;
  String? name;
  String? email;
  String? phone;
  String? add1;
  String? add2;
  String? add3;

  bool isVisible = true;
  String? xFile;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController add1Controller = TextEditingController();
  TextEditingController add2Controller = TextEditingController();
  TextEditingController add3Controller = TextEditingController();

  @override
  void initState() {
    nameController.text = resume.name ?? "";
    emailController.text = resume.email ?? "";
    phoneController.text = resume.phone ?? "";
    add1Controller.text = resume.address1 ?? "";
    add2Controller.text = resume.address2 ?? "";
    add3Controller.text = resume.address3 ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(
          "Contact Page",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    index = 0;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 15),
                    height: 60,
                    width: 150,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Contact",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    index = 1;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 15),
                    height: 60,
                    width: 150,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Photo",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: IndexedStack(
              index: index,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      LinearProgressIndicator(
                        color: Colors.yellow,
                        value: 0.5,
                        backgroundColor: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
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
                        child: Form(
                          key: fkey,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 8),
                                  Image.asset(
                                    "images/user.png",
                                    height: 40,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: "Name",
                                      ),
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.name,
                                      controller: nameController,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please Enter your Name";
                                        } else {
                                          return null;
                                        }
                                      },
                                      onChanged: (value) {
                                        name = value;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.mail,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      decoration:
                                      InputDecoration(labelText: "Email"),
                                      textInputAction: TextInputAction.next,
                                      controller: emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please Enter your Email";
                                        } else if (!value.contains("@") ||
                                            !value.contains(".com")) {
                                          return "Please Enter Valid Email Address";
                                        } else {
                                          return null;
                                        }
                                      },
                                      onChanged: (value) {
                                        email = value;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.phone_android,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                        decoration:
                                        InputDecoration(labelText: "Phone"),
                                        textInputAction: TextInputAction.next,
                                        keyboardType: TextInputType.phone,
                                        controller: phoneController,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Please Enter your Phone Number";
                                          } else {
                                            return null;
                                          }
                                        },
                                        onChanged: (value) {
                                          phone = value;
                                        }),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.location_on,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText:
                                            "Address (Street,Building No)"),
                                        controller: add1Controller,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Please Enter your Address";
                                          } else {
                                            return null;
                                          }
                                        },
                                        onChanged: (value) {
                                          add1 = value;
                                        }),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 8),
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Expanded(
                                    child: TextField(
                                        decoration: InputDecoration(
                                            labelText: "Address line 2"),
                                        keyboardType: TextInputType.name,
                                        controller: add2Controller,
                                        onChanged: (value) {
                                          add2 = value;
                                        }),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 8),
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Expanded(
                                    child: TextField(
                                        decoration: InputDecoration(
                                            labelText: "Address line 3"),
                                        keyboardType: TextInputType.name,
                                        controller: add3Controller,
                                        onChanged: (value) {
                                          add3 = value;
                                        }),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      bool isValid = fkey.currentState?.validate() ?? false;
                                      if (isValid) {
                                        resume.name = name;
                                        resume.email = email;
                                        resume.phone = phone;
                                        resume.address1 = add1;
                                        resume.address2 = add2;
                                        resume.address3 = add3;
                                        fkey.currentState?.save();
                                        FocusScope.of(context).unfocus();
                                      }
                                    },
                                    child: Text("Save"),
                                    style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStatePropertyAll(Colors.blue),
                                      foregroundColor: MaterialStatePropertyAll(
                                          Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      nameController.clear();
                                      emailController.clear();
                                      phoneController.clear();
                                      add1Controller.clear();
                                      add2Controller.clear();
                                      add3Controller.clear();
                                      // fkey.currentState?.reset();
                                    },
                                    child: Text("Reset"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    LinearProgressIndicator(
                      color: Colors.blue,
                      value: 0.5,
                      backgroundColor: Colors.yellow,
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      width: double.infinity,
                      height: 300,
                      padding: EdgeInsets.symmetric(vertical: 50),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              spreadRadius: 2)
                        ],
                      ),
                      child: Center(
                        child: Stack(
                          children: [
                            CircleAvatar(
                              backgroundImage: FileImage(File(xFile ?? "")),
                              radius: 60,
                              backgroundColor: Colors.grey,
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: InkWell(
                                onTap: () async {
                                  XFile? file = await ImagePicker()
                                      .pickImage(source: ImageSource.gallery);
                                  xFile = file?.path ?? "";
                                  setState(() {});
                                },
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue),
                                  child: Icon(Icons.add),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
