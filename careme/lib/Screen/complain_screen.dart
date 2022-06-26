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
      home: SafeArea( //define safe area
        child: Scaffold(
          appBar: AppBar(  //inisialisasi AppBar untuk kembali ke halaman sebelumnya
          leading: IconButton(  // membuat button kembali
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
              Center( // deklarasi kata dengan di tengah
                child: Text(
                "Please fill out the form below!",
                style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(height: 40,), // memberi jarak
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // membuat form nama 
                    Text("Name", style: TextStyle(fontSize: 20),),
                    SizedBox(height: 10,),
                    TextField( // membuat box form
                      decoration: InputDecoration(
                        hintText: "Type here...",
                        border: OutlineInputBorder( // menambahkan border
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Color(0xff36622B)),
                        ),
                      ),
                    ),

                     // membuat form email
                    SizedBox(height: 20,),
                    Text("Email Address", style: TextStyle(fontSize: 20),),
                    SizedBox(height: 10,),
                    TextField( // membuat box form
                      decoration: InputDecoration(
                        hintText: "Type here...",
                        border: OutlineInputBorder( // menambahkan border
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Color(0xff36622B)),
                        ),
                      ),
                    ),
                    
                    // membuat form alasan
                    SizedBox(height: 20,),
                    Text("Alasan", style: TextStyle(fontSize: 20),),
                    SizedBox(height: 10,),
                    TextField( // membuat box form
                      decoration: InputDecoration(
                        hintText: "Type here...",
                        border: OutlineInputBorder( // menambahkan border
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 2, color: Color(0xff36622B)),
                        ),
                      ),
                    ),
                    
                    // membuat form detail issue
                    SizedBox(height: 20,),
                    Text("Detail Issue", style: TextStyle(fontSize: 20),),
                    SizedBox(height: 10,),
                    TextField( // membuat box form
                      decoration: InputDecoration(
                        // contentPadding: const EdgeInsets.symmetric(vertical: 60.0),
                        hintText: "Type here...",
                        border: OutlineInputBorder( // menambahkan border
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

               // membuat button submit
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                width: 200,
                height: 60,
                child: ElevatedButton( //deklarasi button
                  onPressed: () {}, 
                  child: Text(
                    "submit",
                    
                  ),
                  style: ElevatedButton.styleFrom( // deklarasi bentuk button
                      elevation: 0,
                      primary: Color(0xff36622B),
                      shape: RoundedRectangleBorder( // menambahkan border
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