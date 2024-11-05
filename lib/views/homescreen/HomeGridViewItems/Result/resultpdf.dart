import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:dob_input_field/dob_input_field.dart';
import 'package:ppi/constants/custombutton.dart';
import 'package:ppi/main.dart';

import '../../../../../constants/customtext.dart';
import '../../../../../controller/homeController.dart';

class Resultpdf extends StatefulWidget {
  Resultpdf({super.key,});



  @override
  State<Resultpdf> createState() => _ResultpdfState();
}

class _ResultpdfState extends State<Resultpdf> {

  final studentnameEditingController = TextEditingController();
  final fathersnameEditingController = TextEditingController();
  final mothersnameEditingController = TextEditingController();
  final dateofbirthEditingController = TextEditingController();
  final emailaddressEditingController = TextEditingController();
  final permanentaddressEditingController = TextEditingController();
  final mobilenumbernEditingController = TextEditingController();
  final parentsmobilenumberEditingController = TextEditingController();
  final technologyEditingController = TextEditingController();

  final examnamesEditingController = TextEditingController();
  final passingyearEditingController = TextEditingController();
  final categoryEditingController = TextEditingController();
  final boardEditingController = TextEditingController();
  final sscrollnoEditingController = TextEditingController();
  final sscregistrationnumberEditingController = TextEditingController();
  final gpaEditingController = TextEditingController();




  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black.withOpacity(0.7)).textLargeFormate(context);
    final TextStyle? largewhite = TextFormate(colors: Colors.white).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);


    return GetBuilder<HomeContrller>(builder: (HomeContrller homcon) {
      return Scaffold(
          backgroundColor: AppColor.homepageappbarcolor,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: AppColor.homepageappbarcolor,
            leading: IconButton(
              icon: Container(
                // height: 10,
                // width: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 3,
                      color: Colors.white,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Icon(Icons.arrow_back,color: AppColor.whiteColor,size: 25,)), // এই আইকনটি বাম দিকে অ্যারো দেখাবে
              onPressed: () {
                Get.back(); // এটি ব্যাক ন্যাভিগেশনের জন্য ব্যবহার করা হয়
              },
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: AppColor.whiteColor,size: 30,))
            ],
            title: Text(
              'Result PDF',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
              style: context.textTheme.titleLarge?.copyWith(
                color: AppColor.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50.h,),
                Container(
                  height: 600.h,
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                    ),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15.h,),
                          Text('Result Uploaded...',style: largeblack,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      );
    }
    );
  }
}


