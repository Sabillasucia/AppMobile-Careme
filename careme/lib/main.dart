
import 'package:careme/Screen/konsultasi_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screen/coba.dart';
import 'Screen/first_screen.dart';
import 'Screen/konsultasi_screen.dart';
import 'Screen/chat_psikolog.dart';
import 'Screen/try.dart';
import 'model/viewmodel/Psikologhandler.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ViewModelPsikolog(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: TryChat(),
      ),
    );
  }
}

