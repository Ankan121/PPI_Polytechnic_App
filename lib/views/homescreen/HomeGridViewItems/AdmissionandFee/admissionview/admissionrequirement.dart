import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/constants/custombutton.dart';
import 'package:ppi/main.dart';

import '../../../../../constants/customtext.dart';
import '../../../../../controller/homeController.dart';

class AdmissionRequirement extends StatefulWidget {
  AdmissionRequirement({super.key,});



  @override
  State<AdmissionRequirement> createState() => _AdmissionRequirementState();
}

class _AdmissionRequirementState extends State<AdmissionRequirement> {


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
            'Admission and  Fee',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
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
                child:  SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 15.h,),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Text('Admission Requirement',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,decoration: TextDecoration.underline, ),textAlign: TextAlign.center,),
                            SizedBox(height: 10.h,),
                            Text(           '''ভর্তির প্রক্রিয়া\n
ভর্তি ফিঃ\n
৬,৫০০/- ( এককালীন ৪ বছর )\n
টিউশন ফিঃ\n
১৪,৯০০/- ( প্রতি সেমিষ্টার)\n
ফর্ম ফিলাপ ফিঃ\n
কারিগরি শিক্ষা বোর্ড কর্তৃক নির্ধারিত ( প্রতি সেমিষ্টার )\n
পর্বমধ্য ফিঃ\n
(৫০০)/- ( প্রতি সেমিষ্টার )\n
ভর্তি যোগ্যতাঃ\n
কারিগরি শিক্ষাবোর্ড এর নির্দেশনা অনুসারে যে কোন সালে পাশকৃত করা দেশের সকল শিক্ষা বোর্ড এবং বাংলাদেশ উন্মুক্ত বিশ্ববিদ্যালয়ের অধীনে অনুষ্ঠিত এসএসসি / দাখিল / এসএসসি (ভোকেশনাল) / সমমান পরীক্ষায় উত্তীর্ণ এবং কমপক্ষে জিপিএ ২.০০ প্রাপ্ত শিক্ষার্থীরা এবং ‘ও’ লেভেলের যেকোন একটি বিষয়ে ‘ডি’ গ্রেড এবং গণিতসহ অন্য যেকোন দুটি বিষয়ে নূন্যতম ‘ই’ গ্রেড পেয়ে উত্তীর্ণ শিক্ষার্থীরা ভর্তির জন্য আবেদন করতে পারবে।\n
ভর্তির প্রয়োজনীয় কাগজপত্রঃ\n
০২ (দুই) কপি পাসপোর্ট সাইজের রঙ্গিন ছবি, এসএসসি/দাখিল পরীক্ষার মূল নম্বরপত্র এবং ফটোকপি, অভিভাবকের পরিচয়পত্র এর ফটোকপি, এসএসসি পরীক্ষার প্রবেশপত্র/ রেজিষ্ট্রেশন কার্ডের ফটোকপি।\n
সরাসরি তৃতীয় পর্বে ভর্তির জন্য:\n
১। ০২(দুই) কপি পাসপোর্ট সাইজের রঙ্গিন ছবি, এসএসসি /দাখিল ও এইচএসসি/আলিম পরীক্ষার মূল নম্বরপত্র এবং ফটোকপি, অভিভাবকের পরিচয়পত্র এর ফটোকপি, এসএসসি / দাখিল ও এইচএসসি / আলিম পরীক্ষার প্রবেশপত্র/ রেজিষ্ট্রেশন কার্ডের ফটোকপি।\n
২। বিজ্ঞান বিভাগ হতে পাশ করতে হবে এবং উচ্চতর গণিত থাকতে হবে।'''
                            ,
                              style: largeblack, textAlign: TextAlign.justify,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    );
  }
}


