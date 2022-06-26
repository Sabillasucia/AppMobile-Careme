// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';

// ignore: camel_case_types
class firstscreen extends StatelessWidget {
  const firstscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                // margin: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Image.asset(
                    "assets/image/logo.png",
                    width: 300,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Care Me",
                  style: TextStyle(
                      fontSize: 60,
                      color: Color(0xff36622B),
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => loginscreen());
                    Navigator.push(context, route);
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Color(0xff36622B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                    ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => register());
                    Navigator.push(context, route);
                  },
                  child: Text(
                    "Registration",
                    style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Color(0xff36622B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
