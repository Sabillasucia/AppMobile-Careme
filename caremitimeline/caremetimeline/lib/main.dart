import 'package:caremetimeline/timeline/model/timeline_handler.dart';
import 'package:flutter/material.dart';
import 'package:caremetimeline/timeline/screen/screen_primary_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ViewModelTimeline>(
          create: (_) => ViewModelTimeline(),
          child: MaterialApp(
            title: 'Andre Agasi Simanungkalit - 1301190338',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const MyHomePage(title: 'modul 13'),
            initialRoute: '/',
            routes: {
              '/screen_primary_page': (context) => Timeline(),
            },
          ),
        ),
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Time Line'),
              onPressed: () {
                Navigator.pushNamed(context, '/screen_primary_page');
              },
            )
          ],
        )));
  }
}
