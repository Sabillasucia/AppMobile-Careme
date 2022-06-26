// ignore_for_file: prefer_const_constructors
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tubescareme/Screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model/user_model.dart';

// ignore: camel_case_types
class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

// ignore: camel_case_types
class _registerState extends State<register> {
  final _auth = FirebaseAuth.instance;
  //form key
  final _formKey = GlobalKey<FormState>();

  //Editing Controller
  final emailEditingController = new TextEditingController();
  final namalengkapController = new TextEditingController();
  final kelaminController = new TextEditingController();
  final teleponController = new TextEditingController();
  final nikController = new TextEditingController();
  final passwordEditingController = new TextEditingController();

  bool firstValue = false;
  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("please enter your email");
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-].[a-z]").hasMatch(value)) {
          return ("Please enter a valid email");
        }
        return null;
      },
      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 2, color: Color(0xff36622B)),
        ),
      ),
    );

    final namalengkapField = TextFormField(
      autofocus: false,
      controller: namalengkapController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = RegExp(r'^.{4,}$');
        if (value!.isEmpty) {
          return ("Please enter your name");
        }
        if (!regex.hasMatch(value)) {
          return ("Please enter valid name");
        }
        return null;
      },
      onSaved: (value) {
        namalengkapController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: "Nama Lengkap",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 2, color: Color(0xff36622B)),
        ),
      ),
    );

    final kelaminField = TextFormField(
      autofocus: false,
      controller: kelaminController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = RegExp(r'^.{4,}$');
        if (value!.isEmpty) {
          return ("Please enter your gender");
        }
        if (!regex.hasMatch(value)) {
          return ("Please enter valid gender");
        }
        return null;
      },
      onSaved: (value) {
        kelaminController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: "Kelamin",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 2, color: Color(0xff36622B)),
        ),
      ),
    );

    final teleponField = TextFormField(
      autofocus: false,
      controller: teleponController,
      keyboardType: TextInputType.phone,
      validator: (value) {
        RegExp regex = RegExp(r'^.{12,}$');
        if (value!.isEmpty) {
          return ("Please enter your phone number");
        }
        if (!regex.hasMatch(value)) {
          return ("Please enter valid phone number");
        }
        return null;
      },
      onSaved: (value) {
        teleponController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: "No Telepon",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 2, color: Color(0xff36622B)),
        ),
      ),
    );

    final nikField = TextFormField(
      autofocus: false,
      controller: nikController,
      keyboardType: TextInputType.number,
      validator: (value) {
        RegExp regex = RegExp(r'^.{16,}$');
        if (value!.isEmpty) {
          return ("Please enter your NIK");
        }
        if (!regex.hasMatch(value)) {
          return ("Please enter valid NIK");
        }
        return null;
      },
      onSaved: (value) {
        nikController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: "NIK",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 2, color: Color(0xff36622B)),
        ),
      ),
    );

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      validator: (value) {
        RegExp regex = RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Please enter your password");
        }
        if (!regex.hasMatch(value)) {
          return ("Please enter valid password (Min. 6 Character");
        }
        return null;
      },
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 2, color: Color(0xff36622B)),
        ),
      ),
    );

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
              ),
              Container(
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/image/logo.png",
                        width: 90,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Center(
                      child: Text(
                        "Care Me",
                        style: GoogleFonts.inter(
                            fontSize: 25,
                            color: Color(0xff36622B),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: emailField,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: namalengkapField,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: kelaminField,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: teleponField,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: nikField,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: passwordField,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    signUp(emailEditingController.text,
                        passwordEditingController.text);
                  },
                  child: Text(
                    "Registration",
                    style: GoogleFonts.inter(
                        fontSize: 15, fontWeight: FontWeight.w600),
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
    );
  }

  void signUp(String email, String password) async {
    await _auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) => {postDetailsToFirestore()})
        .catchError((e) {
      Fluttertoast.showToast(msg: e!.message);
    });
  }

  void postDetailsToFirestore() async {
    //calling out firestore
    //calling our user nodel
    //sending these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    //writing ll the falues
    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.namalengkap = namalengkapController.text;
    userModel.kelamin = kelaminController.text;
    userModel.telepon = teleponController.text;
    userModel.nik = nikController.text;
    userModel.password = passwordEditingController.text;

    await firebaseFirestore
        .collection("user")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully");

    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => HomeScreen()),
        (route) => false);
  }
}
