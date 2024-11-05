import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';

import '../../../../constants/customtext.dart';

class StudentOfTheAward extends StatefulWidget {
  const StudentOfTheAward({super.key});

  @override
  State<StudentOfTheAward> createState() => _StudentOfTheAwardState();
}

class _StudentOfTheAwardState extends State<StudentOfTheAward> {
  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);


    return  Scaffold(
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
              child: Icon(Icons.arrow_back,color: AppColor.whiteColor,size: 20,)), // এই আইকনটি বাম দিকে অ্যারো দেখাবে
          onPressed: () {
            Navigator.pop(context); // এটি ব্যাক ন্যাভিগেশনের জন্য ব্যবহার করা হয়
          },
        ),
        title: Text('Addmi',style:context.textTheme.titleLarge?.copyWith(color: AppColor.whiteColor,fontWeight: FontWeight.bold,),),
        centerTitle: true,
      ),

    );
  }
}
