import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/constants/custombutton.dart';
import 'package:ppi/main.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../constants/customtext.dart';
import '../../../../controller/homeController.dart';


class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});


  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black.withOpacity(0.7)).textLargeFormate(context);
    final TextStyle? largewhite = TextFormate(colors: Colors.white).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black).textMediumFormate(context);
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
          title: Text(
            'Developer Details',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
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
              SizedBox(height: 100.h,),
              Stack(
                clipBehavior: Clip.none, // Overflow অংশ কাটবে না
                children: [
                  Container(
                    //height: 600.h,
                    width: double.infinity.w,
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      ),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 50.h,),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 10.h,),
                                    Center(child: Text('Ankan Chandra Biswas',style: largeblack,)),
                                    SizedBox(height: 10.h,),
                                    Card(
                                        color: AppColor.ppialumniview,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ListTile(
                                            leading: Container(
                                              padding: EdgeInsets.all(8.0), // আইকনের চারপাশে স্পেস
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.white, // বর্ডারের রঙ
                                                  width: 3.0,         // বর্ডারের প্রস্থ
                                                ),
                                                color: Colors.transparent,   // পটভূমির রঙ (আইকনের পিছনে)
                                              ),
                                              child: Icon(
                                                Icons.school,
                                                color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                                size: 25,            // আইকনের আকার
                                              ),
                                            ),
                                            title: Text('Pubergaon Polytechnic Institute',style: mediumblack,),
                                          ),
                                        )),
                                    SizedBox(height: 10.h,),
                                    Card(
                                        color: AppColor.ppialumniview,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ListTile(
                                            onTap: (){
                                              launch("tel: 01571258430");
                                            }, // ফোন নম্বরে ক্লিক করলে ডায়ালার খোলে
                                            leading: Container(
                                              padding: EdgeInsets.all(8.0), // আইকনের চারপাশে স্পেস
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.white, // বর্ডারের রঙ
                                                  width: 3.0,         // বর্ডারের প্রস্থ
                                                ),
                                                color: Colors.transparent,   // পটভূমির রঙ (আইকনের পিছনে)
                                              ),
                                              child: Icon(
                                                Icons.phone,
                                                color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                                size: 25,            // আইকনের আকার
                                              ),
                                            ),
                                            title: Text('01571258430',style: mediumblack,),
                                          ),
                                        )),
                                    SizedBox(height: 10.h,),
                                    Card(
                                        color: AppColor.ppialumniview,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ListTile(
                                            onTap: () {
                                              launch("mailto: ankan.dev.prog@gmail.com ?subject=Hello&body=I would like to contact you.");
                                            },
                                            leading: Container(
                                              padding: EdgeInsets.all(8.0), // আইকনের চারপাশে স্পেস
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.white, // বর্ডারের রঙ
                                                  width: 3.0,         // বর্ডারের প্রস্থ
                                                ),
                                                color: Colors.transparent,   // পটভূমির রঙ (আইকনের পিছনে)
                                              ),
                                              child: Icon(
                                                Icons.email,
                                                color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                                size: 25,            // আইকনের আকার
                                              ),
                                            ),
                                            title: Text('ankan.dev.prog@gmail.com',style: mediumblack,),
                                          ),
                                        )),
                                    SizedBox(height: 10.h,),
                                    Card(
                                        color: AppColor.ppialumniview,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ListTile(
                                            leading: Container(
                                              padding: EdgeInsets.all(8.0), // আইকনের চারপাশে স্পেস
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.white, // বর্ডারের রঙ
                                                  width: 3.0,         // বর্ডারের প্রস্থ
                                                ),
                                                color: Colors.transparent,   // পটভূমির রঙ (আইকনের পিছনে)
                                              ),
                                              child: Icon(
                                                Icons.group,
                                                color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                                size: 25,            // আইকনের আকার
                                              ),
                                            ),
                                            title: Text('Computer',style: mediumblack,),
                                          ),
                                        )),
                                    SizedBox(height: 10.h,),
                                    Card(
                                        color: AppColor.ppialumniview,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ListTile(
                                            leading: Container(
                                              padding: EdgeInsets.all(8.0), // আইকনের চারপাশে স্পেস
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.white, // বর্ডারের রঙ
                                                  width: 3.0,         // বর্ডারের প্রস্থ
                                                ),
                                                color: Colors.transparent,   // পটভূমির রঙ (আইকনের পিছনে)
                                              ),
                                              child: Icon(
                                                Icons.date_range,
                                                color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                                size: 25,            // আইকনের আকার
                                              ),
                                            ),
                                            title: Text('2020-2021',style: mediumblack,),
                                          ),
                                        )),
                                    SizedBox(height: 10.h,),
                                    Card(
                                        color: AppColor.ppialumniview,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ListTile(
                                            leading: Container(
                                              padding: EdgeInsets.all(8.0), // আইকনের চারপাশে স্পেস
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.white, // বর্ডারের রঙ
                                                  width: 3.0,         // বর্ডারের প্রস্থ
                                                ),
                                                color: Colors.transparent,   // পটভূমির রঙ (আইকনের পিছনে)
                                              ),
                                              child: Icon(
                                                Icons.format_list_numbered,
                                                color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                                size: 25,            // আইকনের আকার
                                              ),
                                            ),
                                            title: Text('566989',style: mediumblack,),
                                          ),
                                        )),
                                    SizedBox(height: 10.h,),
                                    Card(
                                        color: AppColor.ppialumniview,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ListTile(
                                            leading: Container(
                                              padding: EdgeInsets.all(8.0), // আইকনের চারপাশে স্পেস
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.white, // বর্ডারের রঙ
                                                  width: 3.0,         // বর্ডারের প্রস্থ
                                                ),
                                                color: Colors.transparent,   // পটভূমির রঙ (আইকনের পিছনে)
                                              ),
                                              child: Icon(
                                                Icons.grade,
                                                color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                                size: 25,            // আইকনের আকার
                                              ),
                                            ),
                                            title: Text('3.80',style: mediumblack,),
                                          ),
                                        )),
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
                  Positioned(
                    top: -MediaQuery.of(context).size.height * 0.1, // স্ক্রিনের উচ্চতার ১০% হিসাবে উপরে থাকবে
                    right: MediaQuery.of(context).size.width * 0.3,  // স্ক্রিনের প্রস্থের ৩০% হিসাবে ডানে অবস্থান করবে
                    child: Container(
                      padding: EdgeInsets.all(2.0), // বর্ডার ও ছবির মধ্যে কিছু জায়গা রাখবে
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey, // বর্ডারের রঙ
                          width: 5.0, // বর্ডারের প্রস্থ
                        ),
                      ),
                      child: CircleAvatar(
                        // radius: 40,
                        radius: MediaQuery.of(context).size.width * 0.2 - 4, // প্যাডিং এর জন্য একটু ছোট করে দিবে
                        backgroundImage: AssetImage('assets/developer img/Pass 1.jpg'),
                      ),
                    ),
                  ),


                ],
              ),
            ],
          ),
        ),
      );
    },);
  }
}


