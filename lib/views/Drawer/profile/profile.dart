import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/views/Drawer/profile/profileadd.dart';
import 'package:url_launcher/url_launcher.dart';


import '../../../../constants/customtext.dart';
import '../../../../controller/homeController.dart';
import '../../../../model/ppialumniassociation.dart';
import '../../db_service/db_herper.dart';

class Profilescreen extends StatefulWidget {
  Profilescreen({super.key,});
  // final Ppialumniassociation? ppialumnimodel;

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {


  List items = [];
  // List searchitems = [];


  void initState(){
    readItemsDatabase();
    super.initState();
  }

  Future<void> readItemsDatabase()async{

    setState(() {
      items = [];
    });

    final allnotes = await DbHelper().readItems();
    print(allnotes);
    setState(() {
      items.addAll(allnotes);
    });
  }

  //---- search list
  // final textEditingController = TextEditingController();
  //
  // String? direction = 'listview';
  //
  // void searchHere(String? e){
  //   setState(() {
  //     searchitems = [];
  //   });
  //   var listItem =  items.where((i) => i["title"].toString().toLowerCase() == e.toString().toLowerCase()).toList();
  //   print(listItem) ;
  //   print("listItem") ;
  //   setState(() {
  //     searchitems.addAll(listItem);
  //   });
  // }


  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black.withOpacity(0.7)).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);


    return  GetBuilder<HomeContrller>(builder: (HomeContrller homcon){

      // var img = items[0]['img'];
      // var name = items[0]['name'];
      // var roll = items[0]['roll'];
      // var birthday = items[0]['birthday'];
      // var department = items[0]['department'];
      // var semester = items[0]['semester'];
      // var registration = items[0]['registration'];
      // var email = items[0]['email'];

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
            IconButton(onPressed: (){
              Get.to(()=>profileadd());
            }, icon: Icon(Icons.edit,color: AppColor.whiteColor,size: 30,))
          ],
          title: Text(
            'Profile',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
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
                                    Center(
                                      child:  Text(
                                        items.isNotEmpty && items.last['name'] != null
                                            ? items.last['name'] // লিস্টের শেষ আইটেমের 'name'
                                            : 'Your Name',  // যদি নাম না থাকে, 'Your Name' দেখাবে
                                        style: largeblack,
                                        overflow: TextOverflow.ellipsis, // টেক্সটের শেষের অংশে '...' দেখাবে যদি এটি বড় হয়ে যায়
                                        maxLines: 1, // এক লাইনে সীমাবদ্ধ রাখবে
                                      )

                                    ),

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
                                                Icons.apartment,
                                                color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                                size: 25,            // আইকনের আকার
                                              ),
                                            ),
                                            title: Text('Department',style: mediumblack,),
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
                                                Icons.school,
                                                color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                                size: 25,            // আইকনের আকার
                                              ),
                                            ),
                                            title: Text('Semester',style: mediumblack,),
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
                                                Icons.assignment,
                                                color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                                size: 25,            // আইকনের আকার
                                              ),
                                            ),
                                            title: Text('Roll',style: mediumblack,),
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
                                                Icons.confirmation_number,
                                                color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                                size: 25,            // আইকনের আকার
                                              ),
                                            ),
                                            title: Text('Registration',style: mediumblack,),
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
                                                Icons.cake ,
                                                color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                                size: 25,            // আইকনের আকার
                                              ),
                                            ),
                                            title: Text('Birthday',style: mediumblack,),
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
                                                Icons.email_outlined,
                                                color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                                size: 25,            // আইকনের আকার
                                              ),
                                            ),
                                            title: Text('Email',style: mediumblack,),
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
                      child:
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.width * 0.2 - 4, // প্যাডিং এর জন্য একটু ছোট করে দিবে
                        backgroundImage: items.isNotEmpty && items[0]['img'] != null && File(items[0]['img']).existsSync()
                            ? FileImage(File(items[0]['img'])) // ফাইল পাওয়া গেলে সেটি দেখাবে
                            : null, // না পেলে child ব্যবহার করবে
                        child: items.isEmpty || items[0]['img'] == null || !File(items[0]['img']).existsSync()
                            ? Icon(
                          Icons.account_circle, // ডিফল্ট আইকন
                          size: 50, // আইকনের আকার
                          color: Colors.grey, // আইকনের রঙ
                        )
                            : null, // ফাইল থাকলে child খালি রাখবে
                      ),


                      // CircleAvatar(
                      //   radius: MediaQuery.of(context).size.width * 0.2 - 4, // প্যাডিং এর জন্য একটু ছোট করে দিবে
                      //   backgroundImage: FileImage(File('g')),
                      //   // backgroundImage: AssetImage('assets/ppicareer/Alljobs.png'),
                      // ),
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
