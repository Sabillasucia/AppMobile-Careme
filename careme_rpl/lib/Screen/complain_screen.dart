// ignore_for_file: prefer_const_constructors
import 'package:careme_rpl/model/complaint_model.dart';
import 'package:careme_rpl/Screen/viewModel/complaint_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: camel_case_types
class Complaint extends StatefulWidget {
  const Complaint({Key? key}) : super(key: key);

  @override
  State<Complaint> createState() => _ComplaintState();
}

// ignore: camel_case_types
class _ComplaintState extends State<Complaint> {
  final _namaEditingController = TextEditingController();
  final _emailEditingController = TextEditingController();
  final _pesanEditingController = TextEditingController();

  // ignore: unused_field
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final complaint = Provider.of<ComplaintViewModel>(context);
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
            title: Text("Costumer Complaint"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Please fill out the form below",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          controller: _namaEditingController,
                          decoration: InputDecoration(
                            hintText: "Type here...",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xff36622B)),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "nama tidak boleh kosong";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Email Address",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _emailEditingController,
                        decoration: InputDecoration(
                          hintText: "Type here...",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 2, color: Color(0xff36622B)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Detail Issue",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          controller: _pesanEditingController,
                          maxLines: null,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            // contentPadding: const EdgeInsets.symmetric(vertical: 60.0),
                            hintText: "Type here...",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xff36622B)),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "pesan tidak boleh kosong";
                            }
                            return null;
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // if(_formKey.currentState!.validate()){
                      _formKey.currentState?.save();

                      complaint.postComplaint(ComplaintModel(
                          email: _emailEditingController.text,
                          name: _namaEditingController.text,
                          message: _pesanEditingController.text));

                      _emailEditingController.clear();
                      _namaEditingController.clear();
                      _pesanEditingController.clear();

                      Fluttertoast.showToast(msg: 'Complaint Has Been Send');
                    },
                    // },
                    child: Text(
                      "Submit",
                      style: TextStyle(fontSize: 15),
                    ),
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Color(0xff36622B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
