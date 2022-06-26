// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:careme/home/homescreen_viewModel.dart';
// import 'package:provider/provider.dart';

// class Banner extends StatefulWidget {
//   const Banner({Key? key}) : super(key: key);

//   @override
//   State<Banner> createState() => _BannerState();
// }

// class _BannerState extends State<Banner> {
//   bool isInit = true;

//   @override
//   void didChangeDependencies() {
//     if (isInit == true) {
//       Provider.of<HomeScreenViewModel>(context, listen: false).getBanner();
//       isInit = false;
//     }
//     super.didChangeDependencies();
//   }
//   @override
//   Widget build(BuildContext context) {
//     final homeCareMeProvider = Provider.of<HomeScreenViewModel>(context);
//     return CarouselSlider.builder(
//         itemCount: 4,
//         options: CarouselOptions(
//           height: 180,
//           autoPlay: true,
//           enlargeCenterPage: true,
//           autoPlayInterval: const Duration(seconds: 4),
//         ),
//         itemBuilder: (context, index, realindex) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(vertical: 15),
//             child: Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   image: DecorationImage(
//                       image: NetworkImage(
//                         homeCareMeProvider.listBanner[index].image!,
//                       ),
//                       fit: BoxFit.cover),
//                   boxShadow: const [
//                     BoxShadow(
//                       offset: Offset(0, 5),
//                       blurRadius: 5,
//                       color: Color.fromARGB(117, 0, 0, 0),
//                     )
//                   ]),
//             ),
//           );
//         });
//   }
// }