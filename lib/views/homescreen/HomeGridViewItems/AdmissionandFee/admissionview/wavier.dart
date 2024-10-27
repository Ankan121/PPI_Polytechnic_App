import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/constants/custombutton.dart';
import 'package:ppi/main.dart';

import '../../../../../constants/customtext.dart';
import '../../../../../controller/homeController.dart';

class Wavier extends StatefulWidget {
  Wavier({super.key,});



  @override
  State<Wavier> createState() => _WavierState();
}

class _WavierState extends State<Wavier> {


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
            'Wavier',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
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
                              SizedBox(height: 10.h,),
                              Text('Special discount on admission fee:',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,decoration: TextDecoration.underline, ),textAlign: TextAlign.left,),
                              SizedBox(height: 10.h,),
                              Table(
                                //border: TableBorder.all(),
                                columnWidths: const <int, TableColumnWidth>{
                                  0: IntrinsicColumnWidth(),
                                  1: FlexColumnWidth(2), // Increased width for the second column
                                  2: FixedColumnWidth(110),
                                  3: FixedColumnWidth(90), // Add width for the new column
                                },
                                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                children: <TableRow>[
                                  TableRow(
                                    children: <Widget>[
                                      Container(
                                        height: 60,
                                        width: 80,
                                        color: Color(0xffFFD588),
                                        child: Center(child: Text('Golden\nA+', style: mediumblack,textAlign: TextAlign.center,),),
                                      ),
                                      Container(
                                        height: 60,
                                        color: Color(0xffFFD588),
                                        child: Center(child: Text('A+\n(GPA-5.00)', style: mediumblack,textAlign: TextAlign.center,)),
                                      ),
                                      Container(
                                        height: 60,
                                        color: Color(0xffFFD588),
                                        child: Center(child: Text('(GPA-4.50)', style: mediumblack,textAlign: TextAlign.center,)),
                                      ),
                                      Container(
                                        height: 60,
                                        color: Color(0xffFFD588), // New column background color
                                        child: Center(child: Text('A\n(GPA-4.00)', style: mediumblack,textAlign: TextAlign.center,)), // Text for the new column
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        color: Color(0xffFFF7C1),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('100%', style: mediumblack,textAlign: TextAlign.center,),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        color: Color(0xffFFF7C1),
                                        child: Center(child: Text('50%', style: mediumblack,textAlign: TextAlign.center,)),
                                      ),
                                      Center(
                                        child: Container(
                                          height: 50,
                                          color: Color(0xffFFF7C1),
                                          child: Center(child: Text('20%', style: mediumblack,textAlign: TextAlign.center,)),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        color: Color(0xffFFF7C1), // New column background color
                                        child: Center(child: Text('15%', style: mediumblack,textAlign: TextAlign.center,)), // Data for the new column
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
        ),
      );
    }
    );
  }
}


