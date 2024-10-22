
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/views/homescreen/homeScreen.dart';
import '../../constants/customtext.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    // 2 সেকেন্ড পর হোম স্ক্রীনে নিয়ে যাওয়া
    Timer(const Duration(seconds: 2), () {
      Get.off<Homescreen>(const Homescreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    // TextStyle নির্ধারণ
    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);

    // স্ক্রীনের প্রস্থ এবং উচ্চতা
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // X এবং Y এর মান স্ক্রিনের আকার অনুযায়ী পরিবর্তন
    double alignmentX = screenWidth > 600 ? 0.2 : 0.0; // ট্যাবলেটের জন্য X ভ্যালু
    double alignmentY = screenHeight > 800 ? -0.3 : -0.1; // বড় স্ক্রিনের জন্য Y ভ্যালু

    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              // ব্যাকগ্রাউন্ড ইমেজ
              Container(
                height: screenHeight * 0.6, // স্ক্রীনের উচ্চতার অর্ধেক
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/splashScreen/img.png'),
                    fit: BoxFit.cover, // ইমেজ পুরো কভার করবে
                  ),
                ),
              ),
              // টেক্সটের জন্য কনটেইনার
              Positioned(
                top: screenHeight * 0.38.h, // স্ক্রীনের 35% উপর
                left: screenWidth * 0.5 - 400.w, // স্ক্রীনের মাঝখানে
                child: Container(
                  height: 800.h,
                  width: 800.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5.0,
                        blurRadius: 7.0,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Align(
                    alignment: Alignment(alignmentX, alignmentY),
                    child: Text(
                      'PUBERGAON POLYTECHNIC INSTITUTE',
                      style: largeblack,
                      //textAlign: TextAlign.center, // টেক্সট সেন্টার করতে
                    ),
                  ),
                ),
              ),
              // CircleAvatar
              Positioned(
                top: screenHeight * 0.42, // স্ক্রীনের 35% উপর
                left: screenWidth * 0.17.w, // স্ক্রীনের মাঝখানে
                child: Container(
                  height: 260,
                  width: 260,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5.0,
                        blurRadius: 7.0,
                        offset: Offset(0, 3),
                      ),
                    ],
                    border: Border.all(
                      color: Colors.white,
                      width: 4.0,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment(alignmentX, alignmentY),
                    child: CircleAvatar(
                      radius: 110.0.r, // CircleAvatar এর রেডিয়াস
                      backgroundImage: AssetImage('assets/splashScreen/PPI Logo.jpg'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:ppi/constants/color.dart';
// import 'package:ppi/views/homescreen/homeScreen.dart';
//
// import '../../constants/customtext.dart';
//
// class Splashscreen extends StatefulWidget {
//   const Splashscreen({super.key});
//
//   @override
//   State<Splashscreen> createState() => _SplashscreenState();
// }
//
// class _SplashscreenState extends State<Splashscreen> {
//
//
//
//   void initState(){
//     Timer(const Duration(seconds: 2000), () {
//       Get.off<Homescreen>(const Homescreen());
//     });
//
//     super.initState();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//
//
//
//
//     final TextStyle? largeblack = TextFormate(colors: Colors.black,).textLargeFormate(context);
//
//
//
//     // final mediaQuery = MediaQuery.of(context);
//     // final screenWidth = mediaQuery.size.width;
//     // final screenHeight = mediaQuery.size.height;
//     //
//     // double yourWidgetWidth = 100.0; // আপনার উইজেটের প্রস্থ
//     // double yourWidgetHeight = 100.0; // আপনার উইজেটের উচ্চতা
//
//     // ডিভাইসের স্ক্রিনের প্রস্থ এবং উচ্চতা
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//
//     // X এবং Y এর মান স্ক্রিন অনুযায়ী পরিবর্তিত হচ্ছে
//     double alignmentX = screenWidth > 600 ? 0.2 : 0.0; // ট্যাবলেটের জন্য X ভ্যালু
//     double alignmentY = screenHeight > 800 ? -0.3 : -0.1; // বড় স্ক্রিনের জন্য Y ভ্যালু
//
//
//
//     return Scaffold(
//       backgroundColor: AppColor.whiteColor,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent, // AppBar এর ব্যাকগ্রাউন্ড রঙ সম্পূর্ণ স্বচ্ছ করে দিবে।
//         elevation: 0, // Elevation সরিয়ে দিবে, যাতে ছায়া না থাকে।
//       ),
//       extendBodyBehindAppBar: true,
//       extendBody: true,
//       body: Column(
//         children: [
//
//           Stack(
//             clipBehavior: Clip.none,
//             //alignment: AlignmentDirectional.bottomCenter,
//             children:[
//               Container(
//                 height: MediaQuery.of(context).size.height / 2 - -80.h,
//                 //width: MediaQuery.of(context).size.width /2 - 0.w,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/splashScreen/img.png'),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//               Positioned(
//                 // left: screenWidth / 2 - (yourWidgetWidth / 2), // স্ক্রিনের একদম মাঝখানে
//                 // top: screenHeight / 2 - (yourWidgetHeight / 2), // স্ক্রিনের ভর্তিকাল মাঝখানে
//                 top: MediaQuery.of(context).size.height / 2 - 100.r,
//                 left: MediaQuery.of(context).size.width / 2 - 300.r,
//                 child: Align(
//                   alignment: Alignment.center, // পুরো স্ক্রিনের মাঝখানে
//                   child: Container(
//                     height: MediaQuery.of(context).size.height /2 - -400,
//                     width: MediaQuery.of(context).size.width / 2 - -400.w,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       shape: BoxShape.circle,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.2),
//                           spreadRadius: 5.0,
//                           blurRadius: 7.0,
//                           offset: Offset(0, 3),
//                         ),
//                       ],
//                       // border: Border.all(
//                       //   color: Colors.black,
//                       //   width: 4.0,
//                       // ),
//                     ),
//                     child:
//                     Align(
//                         alignment: Alignment(0, -0.1),
//                         child: Text('PUBERGAON POLYTECHNIC INSTITUTE',style: largeblack,)),
//                     // Column(
//                     //   // crossAxisAlignment: CrossAxisAlignment.center,
//                     //   // mainAxisAlignment: MainAxisAlignment.center,
//                     //   children: [
//                     //     Text('PUBERGAON POLYTECHNIC INSTITUTE',style: largeblack,),
//                     //   ],
//                     // ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 // left: screenWidth / 2 - (yourWidgetWidth / 2), // স্ক্রিনের একদম মাঝখানে
//                 // top: screenHeight / 2 - (yourWidgetHeight / 2), // স্ক্রিনের ভর্তিকাল মাঝখানে
//                 top: MediaQuery.of(context).size.height / 2 - 100.r,
//                 left: MediaQuery.of(context).size.width / 2 - 105.r,
//                 child: Container(
//                   height: 270,
//                   width: 270,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     shape: BoxShape.circle,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.2), // ছায়ার রঙ এবং স্বচ্ছতা
//                         spreadRadius: 5.0, // ছায়ার ছড়ানো
//                         blurRadius: 7.0, // ছায়ার ঝাপসা হওয়া
//                         offset: Offset(0, 3), // ছায়ার অবস্থান (x, y)
//                       ),
//                     ],// গোলাকার শেপ
//                     border: Border.all(
//                       color: Colors.white, // বর্ডার রঙ
//                       width: 4.0, // বর্ডারের প্রস্থ
//                     ),
//                   ),
//                   child: Align(
//                     alignment: Alignment(alignmentX, alignmentY),
//                     child: CircleAvatar(
//                       radius: 120.0, // CircleAvatar এর রেডিয়াস (120/2 - বর্ডার প্রস্থ)
//                       backgroundImage: AssetImage('assets/splashScreen/PPI Logo.jpg'), // অ্যাসেট ইমেজ লোড
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }