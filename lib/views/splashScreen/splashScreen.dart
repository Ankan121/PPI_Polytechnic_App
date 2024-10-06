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
    Timer(const Duration(seconds: 2000000), () {
      Get.off<Homescreen>(const Homescreen());
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {


    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);



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
            children:[
              Opacity(
                opacity: 1,
                child: Container(
                  height: 400.h,
                  width: 420.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/splashScreen/img.png'),
                      fit: BoxFit.fill,
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
