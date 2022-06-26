// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

// ignore: camel_case_types
class feedback extends StatefulWidget {
  const feedback({Key? key}) : super(key: key);

  @override
  State<feedback> createState() => _feedbackState();
}

// ignore: camel_case_types
class _feedbackState extends State<feedback> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: Color(0xff36622B),
            centerTitle: true,
            title: Text("Survei Kepuasan"),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: const Text('Tuliskan feedback anda pada layanan CareMe!',
                    style: TextStyle(
                        color: Color(0xFF36622B),
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 70.0),
                      labelText: ' Tulis disini........',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 100,
                height: 30,
                child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text("Terima atas feedback Anda."),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              )
                            ],
                          );
                        },
                      );
                    },
                    child: const Text('Submit',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        primary: Color(0xFF36622B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
