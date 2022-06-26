import 'package:careme_rpl/Screen/viewModel/Psikologhandler.dart';
import 'package:careme_rpl/Screen/viewModel/complaint_viewmodel.dart';
import 'package:careme_rpl/Screen/viewModel/model_search.dart';
import 'package:careme_rpl/Screen/viewModel/timeline_handler.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screen/first_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ViewModelPsikolog()),
        ChangeNotifierProvider<ComplaintViewModel>(
            create: (context) => ComplaintViewModel()),
        ChangeNotifierProvider<ViewModelTimeline>(
            create: (context) => ViewModelTimeline()),
        ChangeNotifierProvider<ViewModelSearch>(
            create: (context) => ViewModelSearch()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Careme',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: firstscreen(),
      ),
    );
  }
}
