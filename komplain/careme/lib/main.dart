
import 'package:careme/home/complaint_screen.dart';
import 'package:careme/model/viewmodel/complaint_viewmodel.dart';
import 'package:careme/viewModel/banner_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // child: ChangeNotifierProvider(
      //   create: (context) {
      //     return BannerKesehatan();
      //   },
        // child: const MaterialApp(
        //   debugShowCheckedModeBanner: false,
        //   title: 'Phone Book',
        //   home: Complaint(),
        // ),
      // ),
      providers: [
        ChangeNotifierProvider<BannerKesehatan>(
          create: (_) => BannerKesehatan(),
        ),
        ChangeNotifierProvider<ComplaintViewModel>(
          create: (_) => ComplaintViewModel(),
        ),
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Phone Book',
          home: Complaint(),
        ),
    );
  }
}
