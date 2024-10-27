import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/constants/custombutton.dart';
import 'package:ppi/main.dart';

import '../../../../../constants/customtext.dart';
import '../../../../../controller/homeController.dart';

class AdmissionFee extends StatefulWidget {
  AdmissionFee({super.key,});



  @override
  State<AdmissionFee> createState() => _AdmissionFeeState();
}

class _AdmissionFeeState extends State<AdmissionFee> {


  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black.withOpacity(1)).textLargeFormate(context);
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
            'Admission Fee',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
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
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Admission Fee',style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold,decoration: TextDecoration.underline, ),textAlign: TextAlign.center,),
                            SizedBox(height: 10.h,),
                            Table(
                              //border: TableBorder.all(),
                              columnWidths: const <int, TableColumnWidth>{
                                0: IntrinsicColumnWidth(),
                                1: FlexColumnWidth(2), // Increase this value to make the second column wider
                                2: FixedColumnWidth(120),
                              },
                              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                              children: <TableRow>[
                                TableRow(
                                  children: <Widget>[
                                    Container(
                                      height: 60,
                                      width: 154,
                                      color: Color(0xffFFD588),
                                      child: Center(child: Text('Technology', style: largeblack)),
                                    ),
                                    Container(
                                      height: 60,
                                      color: Color(0xffFFD588),
                                      child: Center(child: Text('Admission\nfee amount', style: largeblack)),
                                    ),
                                    Container(
                                      height: 60,
                                      color: Color(0xffFFD588),
                                      child: Center(child: Text('Fee per\nsemester', style: largeblack)),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                  ),
                                  children: <Widget>[
                                    Container(
                                      height: 60,
                                      color: Color(0xffFFF7C1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Computer',style: largeblack,),
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      color: Color(0xffF1FFDE),
                                      child: Center(child: Text('6,500/-',style: largeblack,)),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 60,
                                        color: Color(0xffFFFAE4),
                                        child: Center(child: Text('14,900/-',style: largeblack,)),
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                  ),
                                  children: <Widget>[
                                    Container(
                                      height: 60,
                                      color: Color(0xffFFF7C1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Electrical',style: largeblack,),
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      color: Color(0xffF1FFDE),
                                      child: Center(child: Text('6,500/-',style: largeblack,)),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 60,
                                        color: Color(0xffFFFAE4),
                                        child: Center(child: Text('14,900/-',style: largeblack,)),
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                  ),
                                  children: <Widget>[
                                    Container(
                                      height: 60,
                                      color: Color(0xffFFF7C1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Civil',style: largeblack,),
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      color: Color(0xffF1FFDE),
                                      child: Center(child: Text('6,500/-',style: largeblack,)),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 60,
                                        color: Color(0xffFFFAE4),
                                        child: Center(child: Text('14,900/-',style: largeblack,)),
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                  ),
                                  children: <Widget>[
                                    Container(
                                      height: 60,
                                      color: Color(0xffFFF7C1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Textile',style: largeblack,),
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      color: Color(0xffF1FFDE),
                                      child: Center(child: Text('6,500/-',style: largeblack,)),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 60,
                                        color: Color(0xffFFFAE4),
                                        child: Center(child: Text('14,900/-',style: largeblack,)),
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                  ),
                                  children: <Widget>[
                                    Container(
                                      height: 60,
                                      color: Color(0xffFFF7C1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Machanical',style: largeblack,),
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      color: Color(0xffF1FFDE),
                                      child: Center(child: Text('6,500/-',style: largeblack,)),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 60,
                                        color: Color(0xffFFFAE4),
                                        child: Center(child: Text('14,900/-',style: largeblack,)),
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                  ),
                                  children: <Widget>[
                                    Container(
                                      height: 60,
                                      color: Color(0xffFFF7C1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Automobile',style: largeblack,),
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      color: Color(0xffF1FFDE),
                                      child: Center(child: Text('6,500/-',style: largeblack,)),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 60,
                                        color: Color(0xffFFFAE4),
                                        child: Center(child: Text('14,900/-',style: largeblack,)),
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                  ),
                                  children: <Widget>[
                                    Container(
                                      height: 70,
                                      color: Color(0xffFFF7C1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Apparel\nManufacturing',style: largeblack,),
                                      ),
                                    ),
                                    Container(
                                      height: 70,
                                      color: Color(0xffF1FFDE),
                                      child: Center(child: Text('6,500/-',style: largeblack,)),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 70,
                                        color: Color(0xffFFFAE4),
                                        child: Center(child: Text('14,900/-',style: largeblack,)),
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                  ),
                                  children: <Widget>[
                                    Container(
                                      height: 70,
                                      color: Color(0xffFFF7C1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Yearn\nManufacturing',style: largeblack,),
                                      ),
                                    ),
                                    Container(
                                      height: 70,
                                      color: Color(0xffF1FFDE),
                                      child: Center(child: Text('6,500/-',style: largeblack,)),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 70,
                                        color: Color(0xffFFFAE4),
                                        child: Center(child: Text('14,900/-',style: largeblack,)),
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                  ),
                                  children: <Widget>[
                                    Container(
                                      height: 70,
                                      color: Color(0xffFFF7C1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Fabric\nanufacturing',style: largeblack,),
                                      ),
                                    ),
                                    Container(
                                      height: 70,
                                      color: Color(0xffF1FFDE),
                                      child: Center(child: Text('6,500/-',style: largeblack,)),
                                    ),
                                    Center(
                                      child: Container(
                                        height: 70,
                                        color: Color(0xffFFFAE4),
                                        child: Center(child: Text('14,900/-',style: largeblack,)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )

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


