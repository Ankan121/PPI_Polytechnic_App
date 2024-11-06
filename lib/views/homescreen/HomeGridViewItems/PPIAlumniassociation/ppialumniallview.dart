import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';

import '../../../../constants/customtext.dart';
import '../../../../controller/homeController.dart';
import '../../../../model/ppialumniassociation.dart';

class PPIAlumniAllView extends StatefulWidget {
   PPIAlumniAllView({super.key, this.ppialumnimodel});
  final Ppialumniassociation? ppialumnimodel;

  @override
  State<PPIAlumniAllView> createState() => _PPIAlumniAllViewState();
}

class _PPIAlumniAllViewState extends State<PPIAlumniAllView> {

  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.find<HomeContrller>().setppialumnimodel();
    });
  }


  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black.withOpacity(0.7)).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);


    return  GetBuilder<HomeContrller>(builder: (HomeContrller homcon){

      // Get screen width
      double screenWidth = MediaQuery.of(context).size.width;

      // Calculate height based on a 3:2 aspect ratio
      double containerHeight = screenWidth * (2 / 3);

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
            '${widget.ppialumnimodel!.name}',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
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
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h,),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                      child: Container(
                                        width: 171.0,   // Equivalent to 40 mm
                                        height: 209.0,  // Equivalent to 50 mm
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black,width: 3),
                                          image: DecorationImage(
                                            image: AssetImage('${widget.ppialumnimodel!.img}'),
                                            fit: BoxFit.fill,
                                          ),
                                          //shape: BoxShape.circle,
                                        ),
                                      )
                                  ),
                                  SizedBox(height: 10.h,),
                                  Center(child: Text('${widget.ppialumnimodel!.name}',style: largeblack,)),
                                  SizedBox(height: 10.h,),
                                  Text('${widget.ppialumnimodel!.company}',style: largeblack,),
                                  SizedBox(height: 10.h,),
                                  Text('${widget.ppialumnimodel!.phone}',style: largeblack,),
                                  SizedBox(height: 10.h,),
                                  Text('${widget.ppialumnimodel!.email}',style: largeblack,),
                                  SizedBox(height: 10.h,),
                                  Text('${widget.ppialumnimodel!.department}',style: largeblack,),
                                  SizedBox(height: 10.h,),
                                  Text('${widget.ppialumnimodel!.roll}',style: largeblack,),
                                  SizedBox(height: 10.h,),
                                  Text('${widget.ppialumnimodel!.cgpa}',style: largeblack,),
                                  SizedBox(height: 10.h,),
                                ],
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 10.h,),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },);
  }
}
