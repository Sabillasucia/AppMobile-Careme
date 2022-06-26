// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';


// ignore: camel_case_types
class complain extends StatefulWidget {
  const complain({Key?key}) : super(key: key);

  @override
  State<complain> createState() => _complainState();
}

// ignore: camel_case_types
class _complainState extends State<complain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          backgroundColor: Color(0xff36622B),
          centerTitle: true,
          title: Text("Costumer Complaint"),
          ),
          body: Column(
            children: [
              SizedBox(height: 20,),
              Center(
                child: Text(
                "Please fill out the form below!",
                style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(height: 40,),
              Container(
            
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name", style: TextStyle(fontSize: 20),),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Type here...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Color(0xff36622B)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Email Address", style: TextStyle(fontSize: 20),),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Type here...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Color(0xff36622B)),
                        ),
                      ),
                    ),
                    
                    SizedBox(height: 20,),
                    Text("Email Address", style: TextStyle(fontSize: 20),),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Type here...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Color(0xff36622B)),
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),
                    Text("Detail Issue", style: TextStyle(fontSize: 20),),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        // contentPadding: const EdgeInsets.symmetric(vertical: 60.0),
                        hintText: "Type here...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Color(0xff36622B)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60,),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                width: 200,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Log in",
                    
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