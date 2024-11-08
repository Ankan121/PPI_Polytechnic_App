import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';

import '../../../../constants/customtext.dart';
import '../../../../controller/homeController.dart';

class Entertainment extends StatefulWidget {
  const Entertainment({super.key});

  @override
  State<Entertainment> createState() => _EntertainmentState();
}

class _EntertainmentState extends State<Entertainment> {
  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);


    return  GetBuilder<HomeContrller>(builder: (HomeContrller homcon){

      // Get screen width
      double screenWidth = MediaQuery.of(context).size.width;

      // Calculate height based on a 3:2 aspect ratio
      double containerHeight = screenWidth * (2 / 3.3);

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
            'Student of the Award',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
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
                        Text('In  2023, the  farewell  ceremony  for  the seniors  and  the  welcome  ceremony for the new ones.',style: largeblack,),
                        SizedBox(height: 10.h,),
                        Center(
                            child: Card(
                              color: Colors.transparent,
                              elevation: 5,
                              child: Container(
                                width: screenWidth,
                                height: containerHeight,  // Equivalent to 50 mm
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage("assets/entertaintment/2023/1-2023.JPG"),
                                    fit: BoxFit.fill,
                                  ),
                                  //shape: BoxShape.circle,
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 10.h,),
                        Center(
                            child: Card(
                              color: Colors.transparent,
                              elevation: 5,
                              child: Container(
                                width: screenWidth,
                                height: containerHeight,  // Equivalent to 50 mm
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage("assets/entertaintment/2023/2-2023.JPG"),
                                    fit: BoxFit.fill,
                                  ),
                                  //shape: BoxShape.circle,
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 10.h,),
                        Center(
                            child: Card(
                              color: Colors.transparent,
                              elevation: 5,
                              child: Container(
                                width: screenWidth,
                                height: containerHeight, // Equivalent to 50 mm
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage("assets/entertaintment/2023/3-2023.JPG"),
                                    fit: BoxFit.fill,
                                  ),
                                  //shape: BoxShape.circle,
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 10.h,),
                        Center(
                            child: Card(
                              color: Colors.transparent,
                              elevation: 5,
                              child: Container(
                                width: screenWidth,
                                height: containerHeight, // Equivalent to 50 mm
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage("assets/entertaintment/2023/4-2023.JPG"),
                                    fit: BoxFit.fill,
                                  ),
                                  //shape: BoxShape.circle,
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 10.h,),
                        Center(
                            child: Card(
                              color: Colors.transparent,
                              elevation: 5,
                              child: Container(
                                width: screenWidth,
                                height: containerHeight,  // Equivalent to 50 mm
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage("assets/entertaintment/2023/5-2023.JPG"),
                                    fit: BoxFit.fill,
                                  ),
                                  //shape: BoxShape.circle,
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 10.h,),
                        Center(
                            child: Card(
                              color: Colors.transparent,
                              elevation: 5,
                              child: Container(
                                width: screenWidth,
                                height: containerHeight,  // Equivalent to 50 mm
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage("assets/entertaintment/2023/6-2023.JPG"),
                                    fit: BoxFit.fill,
                                  ),
                                  //shape: BoxShape.circle,
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 10.h,),
                        Center(
                            child: Card(
                              color: Colors.transparent,
                              elevation: 5,
                              child: Container(
                                width: screenWidth,
                                height: containerHeight,// Equivalent to 50 mm
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage("assets/entertaintment/2023/7-2023.JPG"),
                                    fit: BoxFit.fill,
                                  ),
                                  //shape: BoxShape.circle,
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 10.h,),
                        Center(
                            child: Card(
                              color: Colors.transparent,
                              elevation: 5,
                              child: Container(
                                width: screenWidth,
                                height: containerHeight,  // Equivalent to 50 mm
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage("assets/entertaintment/2023/8-2023.JPG"),
                                    fit: BoxFit.fill,
                                  ),
                                  //shape: BoxShape.circle,
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 10.h,),
                        Center(
                            child: Card(
                              color: Colors.transparent,
                              elevation: 5,
                              child: Container(
                                width: screenWidth,
                                height: containerHeight,  // Equivalent to 50 mm
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage("assets/entertaintment/2023/9-2023.JPG"),
                                    fit: BoxFit.fill,
                                  ),
                                  //shape: BoxShape.circle,
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 10.h,),
                        Center(
                            child: Card(
                              color: Colors.transparent,
                              elevation: 5,
                              child: Container(
                                width: screenWidth,
                                height: containerHeight,  // Equivalent to 50 mm
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage("assets/entertaintment/2023/10-2023.JPG"),
                                    fit: BoxFit.fill,
                                  ),
                                  //shape: BoxShape.circle,
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 10.h,),

                        Divider(color: Colors.black,),

                        SizedBox(height: 10.h,),
                        SizedBox(height: 10.h,),
                        Text('In  2022, the  farewell  ceremony  for  the seniors  and  the  welcome  ceremony for the new ones.',style: largeblack,),
                        SizedBox(height: 10.h,),
                        Center(
                            child: Card(
                              color: Colors.transparent,
                              elevation: 5,
                              child: Container(
                                width: screenWidth,
                                height: containerHeight,  // Equivalent to 50 mm
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage("assets/entertaintment/2022/1-2022.jpg"),
                                    fit: BoxFit.fill,
                                  ),
                                  //shape: BoxShape.circle,
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 10.h,),
                        Center(
                            child: Card(
                              color: Colors.transparent,
                              elevation: 5,
                              child: Container(
                                width: screenWidth,
                                height: containerHeight, // Equivalent to 50 mm
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage("assets/entertaintment/2022/2-2022.jpg"),
                                    fit: BoxFit.fill,
                                  ),
                                  //shape: BoxShape.circle,
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 10.h,),
                        Center(
                            child: Card(
                              color: Colors.transparent,
                              elevation: 5,
                              child: Container(
                                width: screenWidth,
                                height: containerHeight, // Equivalent to 50 mm
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage("assets/entertaintment/2022/3-2022.jpg"),
                                    fit: BoxFit.fill,
                                  ),
                                  //shape: BoxShape.circle,
                                ),
                              ),
                            )
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
