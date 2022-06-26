// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_build_context_synchronously
import 'package:careme_rpl/Screen/login_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart'; //package untuk memanggil fungsi-fungsi flutter
import 'package:careme_rpl/model/user_model.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
} //class untuk profile page yang memanggil class _ProfileState

class _ProfileState extends State<Profile> {
  //class _ProfileState
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("user")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    //membangun widget
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF36622B),
          title: Text("Care Me",
              style: TextStyle(color: Colors.white, fontSize: 27)),
        ),
        //mengembalikan widget Scaffold sebagai widget utama untuk membangunsebuah halaman pada flutter
        body: Padding(
            //padding digunakan untuk mengtur posisi elemen
            padding: const EdgeInsets.symmetric(
                horizontal: 30.0), //meberi jarak secara horizontal
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //membuat layout secara column atau vertical
              SizedBox(height: 10), //memberi space dengan ukuran 10
              Container(
                  //container untuk menyimpan avatar dan nama user
                  width: 600,
                  height: 300,
                  decoration: BoxDecoration(
                    //box untuk gambar
                    image: DecorationImage(
                        //fungsi untuk memasukan gambar
                        fit: BoxFit.cover,
                        image: AssetImage('assets/image/latar.png')),
                    color: Color(0xFF90BE53), //warna background box
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      //membuat nama dan avatar ditengah box
                      child: Stack(
                    alignment: Alignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Image(
                        //gambar avatar
                        image: AssetImage('assets/image/user.png'),
                        fit: BoxFit.cover,
                        height: 150,
                      ),
                      Text(
                        //nama user
                        '${loggedInUser.namalengkap}',
                        style: TextStyle(
                          //untuk memberi style pada text
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
                //memberi space
                height: 20,
              ),
              Row(
                //membuat layout secara column atau horizontal
                crossAxisAlignment:
                    CrossAxisAlignment.start, //untuk mengatur posisi elemen
                children: [
                  Container(
                    //container untuk nomor telepon
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text('Phone', // fungsi untuk menampilkan text "phone"
                            style: TextStyle(
                                //untuk memberi style pada text
                                fontSize: 18,
                                color: Color(0XFF36622B))),
                        Text(
                            '${loggedInUser.telepon}', // fungsi untuk menampilkan text "08123456789"
                            style: TextStyle(
                                //untuk memberi style pada text
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF36622B))),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5), //memberi space
              Column(
                //membuat layout secara column atau vertical
                crossAxisAlignment:
                    CrossAxisAlignment.start, //untuk mengatur posisi elemen
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('Gender', // fungsi untuk menampilkan text "Gender"
                      style: TextStyle(fontSize: 20, color: Color(0XFF36622B))),
                  Text(
                      '${loggedInUser.kelamin}', // fungsi untuk menampilkan text "Male"
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF36622B))),
                  SizedBox(height: 5),
                  Text(
                      'Account Type', // fungsi untuk menampilkan text "Account Type"
                      style: TextStyle(fontSize: 20, color: Color(0XFF36622B))),
                  Text('Patient', // fungsi untuk menampilkan text "Patient"
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF36622B))),
                ],
              ),
              SizedBox(height: 40), //memberi space
              Center(
                //membuat align atau posisi elemen menjadi ditengah
                child: Container(
                  //container untuk button logout
                  height: 50,
                  width: 200,
                  margin: EdgeInsets.only(
                      left: 60,
                      right: 60), //memberi margin untuk kiri-kanan button
                  child: RaisedButton(
                    //fungsi untuk membuat button
                    color: Color(0xFF36622B),
                    child: Text(
                      //memberi text didalam button
                      "Log out",
                      style: TextStyle(
                          //memberi style pada text
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    // ignore: unnecessary_new
                    shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {
                      logout(context);
                    }, //digunakan untuk meberikan navigasi pada button
                  ),
                ),
              )
            ])));
  }
}

Future<void> logout(BuildContext context) async {
  await FirebaseAuth.instance.signOut();
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => loginscreen()));
}
