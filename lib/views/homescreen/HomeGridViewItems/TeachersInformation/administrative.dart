import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/constants/custombutton.dart';
import 'package:ppi/main.dart';

import '../../../../../constants/customtext.dart';
import '../../../../../controller/homeController.dart';
import 'teachersinformation.dart';

class Administrative extends StatefulWidget {
  const Administrative({super.key,});




  @override
  State<Administrative> createState() => _AdministrativeState();
}

class _AdministrativeState extends State<Administrative> {


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
            'Administrative',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
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
                      SizedBox(height: 30.h,),
                      Transform.translate(
                        offset: Offset(0, 0),  // X এবং Y এ স্থানান্তর
                        child: GridView.builder(
                          itemCount: homcon.administrative.length, // Teachers ডাটা অ্যাক্সেস
                          physics: NeverScrollableScrollPhysics(),  // GridView scroll হবে না
                          shrinkWrap: true,  // Content wrap করে ফেলা হবে
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,  // 2 টা column
                            crossAxisSpacing: 10,  // Column এর মধ্যে spacing
                            //mainAxisSpacing: 10,  // Row এর মধ্যে spacing
                            //childAspectRatio: 1,  // Aspect ratio ঠিক রাখতে হবে (height:width = 1:1)
                            childAspectRatio: 3 / 3, // প্রতিটি কন্টেইনারের অনুপাত (width : height)
                          ),
                          itemBuilder: (context, index) {

                             String img = homcon.administrative[index]['img'];
                             String name = homcon.administrative[index]['name'];
                             String designation = homcon.administrative[index]['designation'];
                             String phone = homcon.administrative[index]['phone'];
                             String email = homcon.administrative[index]['email'];

                            return Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 200.0.h,
                                    width: 200.0.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            img),
                                        fit: BoxFit.fill,
                                      ),
                                      //shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(name,style: mediumblack,)
                                ],
                              ),
                            );
                          },
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


