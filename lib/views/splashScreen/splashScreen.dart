import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/views/homescreen/homeScreen.dart';

import '../../constants/customtext.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {



  void initState(){
    Timer(const Duration(seconds: 2), () {
      Get.off<Homescreen>(const Homescreen());
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {




    final TextStyle? largeblack = TextFormate(colors: Colors.black,).textLargeFormate(context);



    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    double yourWidgetWidth = 100.0; // আপনার উইজেটের প্রস্থ
    double yourWidgetHeight = 100.0; // আপনার উইজেটের উচ্চতা




    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // AppBar এর ব্যাকগ্রাউন্ড রঙ সম্পূর্ণ স্বচ্ছ করে দিবে।
        elevation: 0, // Elevation সরিয়ে দিবে, যাতে ছায়া না থাকে।
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Column(
        children: [

          Stack(
            clipBehavior: Clip.none,
            //alignment: AlignmentDirectional.bottomCenter,
            children:[
              Container(
                height: 400.h,
                width: 420.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/splashScreen/img.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                // left: screenWidth / 2 - (yourWidgetWidth / 2), // স্ক্রিনের একদম মাঝখানে
                // top: screenHeight / 2 - (yourWidgetHeight / 2), // স্ক্রিনের ভর্তিকাল মাঝখানে
                top: MediaQuery.of(context).size.height / 2 - -10.r,
                left: MediaQuery.of(context).size.width / 2 - 350.r,
                child: Align(
                  alignment: Alignment.center, // পুরো স্ক্রিনের মাঝখানে
                  child: Container(
                    height: 800,
                    width: 800,
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
                      // border: Border.all(
                      //   color: Colors.black,
                      //   width: 4.0,
                      // ),
                    ),
                    child:
                     Align(
                        alignment: Alignment(0, -0.5),
                        child: Text('PUBERGAON POLYTECHNIC INSTITUTE',style: largeblack,)),
                    // Column(
                    //   // crossAxisAlignment: CrossAxisAlignment.center,
                    //   // mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Text('PUBERGAON POLYTECHNIC INSTITUTE',style: largeblack,),
                    //   ],
                    // ),
                  ),
                ),
              ),
              Positioned(
                // left: screenWidth / 2 - (yourWidgetWidth / 2), // স্ক্রিনের একদম মাঝখানে
                // top: screenHeight / 2 - (yourWidgetHeight / 2), // স্ক্রিনের ভর্তিকাল মাঝখানে
                top: MediaQuery.of(context).size.height / 2 - 100.r,
                left: MediaQuery.of(context).size.width / 2 - 105.r,
                child: Container(
                  height: 270,
                  width: 270,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // ছায়ার রঙ এবং স্বচ্ছতা
                        spreadRadius: 5.0, // ছায়ার ছড়ানো
                        blurRadius: 7.0, // ছায়ার ঝাপসা হওয়া
                        offset: Offset(0, 3), // ছায়ার অবস্থান (x, y)
                      ),
                    ],// গোলাকার শেপ
                    border: Border.all(
                      color: Colors.white, // বর্ডার রঙ
                      width: 4.0, // বর্ডারের প্রস্থ
                    ),
                  ),
                  child: Align(
                    alignment: Alignment(1, -1),
                    child: CircleAvatar(
                      radius: 120.0, // CircleAvatar এর রেডিয়াস (120/2 - বর্ডার প্রস্থ)
                      backgroundImage: AssetImage('assets/splashScreen/PPI Logo.jpg'), // অ্যাসেট ইমেজ লোড
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
