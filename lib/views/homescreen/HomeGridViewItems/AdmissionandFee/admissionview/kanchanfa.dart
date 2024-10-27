import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/constants/custombutton.dart';
import 'package:ppi/main.dart';

import '../../../../../constants/customtext.dart';
import '../../../../../controller/homeController.dart';

class KanchanFA extends StatefulWidget {
  KanchanFA({super.key,});



  @override
  State<KanchanFA> createState() => _KanchanFAState();
}

class _KanchanFAState extends State<KanchanFA> {


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
            'Kanchan Foundation Association',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
            style: context.textTheme.titleLarge?.copyWith(
              color: AppColor.whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
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
                      children: [
                        SizedBox(height: 15.h,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text('Special Scholarship Award from Kanchan Foundation',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,decoration: TextDecoration.underline, ),textAlign: TextAlign.left,),
                              SizedBox(height: 10.h,),
                              Text('Muktijodha  Quota  students  are given  scholarshipfrom Kanchan Foundation. Meritorious, regular andpoor   students   are   awarded   scholarships   fromKanchan Foundation. Golden A+ students 100%, A+students 50% Students  with  GPA - (4.50-4.99) 20%semester fee waiver.',
                                style: largeblack,textAlign: TextAlign.justify,),
                              SizedBox(height: 30.h,),
                              Container(
                                height: 50,
                                width: 300.w,
                                decoration: BoxDecoration(
                                  color: AppColor.homepageappbarcolor,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 7,
                                      offset: Offset(0, 7), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(child: Text('Special offers up to 90% off',style: largeblack,)),
                              )


                            ],
                          ),
                        ),
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


