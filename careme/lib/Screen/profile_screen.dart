// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 10),
              Container(
                  width: 600,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/img/latar.png')),
                    color: Color(0xFF90BE53),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Stack(
                    alignment: Alignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Image(
                        image: AssetImage('assets/img/user.png'),
                        fit: BoxFit.cover,
                        height: 150,
                      ),
                      Text(
                        'Gemma Zee',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 30,
                          color: Colors.white,
                          height: 11,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ))),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text('Phone',
                            style: TextStyle(
                                fontSize: 18, color: Color(0XFF36622B))),
                        Text('08123456789',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF36622B))),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    margin: EdgeInsets.only(left: 200),
                    child: RaisedButton(
                      color: Color(0xFF36622B),
                      child: Text(
                        "Edit",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      // ignore: unnecessary_new
                      shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
              Text('Gender',
                  style: TextStyle(fontSize: 20, color: Color(0XFF36622B))),
              Text('Male',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF36622B))),
              SizedBox(height: 5),
              Text('Account Type',
                  style: TextStyle(fontSize: 20, color: Color(0XFF36622B))),
              Text('Patient',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF36622B))),
              SizedBox(height: 5),
              Text('Born Date',
                  style: TextStyle(fontSize: 20, color: Color(0XFF36622B))),
              Text('27 October 1991',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF36622B))),
                ],
              ),
              SizedBox(height: 40),
              Center(
                child: Container(
                  height: 50,
                  width: 200,
                  margin: EdgeInsets.only(left: 60, right: 60),
                  child: RaisedButton(
                    color: Color(0xFF36622B),
                    child: Text(
                      "Log out",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    // ignore: unnecessary_new
                    shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ])));
  }
}