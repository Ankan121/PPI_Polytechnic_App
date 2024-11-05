import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:dob_input_field/dob_input_field.dart';
import 'package:ppi/constants/custombutton.dart';
import 'package:ppi/main.dart';
import 'package:ppi/views/homescreen/HomeGridViewItems/Result/resultpdf.dart';

import '../../../../../constants/customtext.dart';
import '../../../../../controller/homeController.dart';

class Result extends StatefulWidget {
  Result({super.key,});



  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {


  final catagoriEditingController = TextEditingController();
  final enteryearEditingController = TextEditingController();
  final departmentEditingController = TextEditingController();
  final rollEditingController = TextEditingController();
  final registrationnoEditingController = TextEditingController();



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
            elevation: 0.0,
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
              'Result',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Container(
                                    width: 170, // কনটেইনারের প্রস্থ (ছায়ার জন্য প্রয়োজন)
                                    height: 170, // কনটেইনারের উচ্চতা (ছায়ার জন্য প্রয়োজন)
                                    decoration: BoxDecoration(
                                      color: AppColor.homepageappbarcolor,
                                      shape: BoxShape.circle, // গোলাকার আকার
                                      image: DecorationImage(
                                        image: AssetImage('assets/homepage/2-ppi logo me.png'), // ছবি লোড
                                        fit: BoxFit.cover, // ছবির ফিটিং
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.5), // ছায়ার রং
                                          spreadRadius: 0, // ছায়ার বিস্তার
                                          blurRadius: 5, // ছায়ার ঝাপসা প্রভাব
                                          offset: Offset(0, 0), // ছায়ার অবস্থান
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Center(child: Text('Pubergaon Polytechnic institute',style: largeblack,textAlign: TextAlign.center,)),
                                SizedBox(height: 10.h,),
                                Text('Catagori',style: mediumblack,),
                                SizedBox(height: 10.h,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.textfromfiledcolor,
                                    borderRadius: BorderRadius.circular(40.r),
                                  ),
                                  child: TextFormField(
                                    controller: catagoriEditingController,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                        borderRadius: BorderRadius.circular(40.r),
                                      ),

                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(40.r),
                                      ),
                                      labelText: "Catagori",
                                      labelStyle: TextStyle(
                                          color: Colors.black.withOpacity(0.7)
                                      ),
                                    ), // Label for the name field
                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Text('Enter Year',style: mediumblack,),
                                SizedBox(height: 10.h,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.textfromfiledcolor,
                                    borderRadius: BorderRadius.circular(40.r),
                                  ),
                                  child: TextFormField(
                                    controller: enteryearEditingController,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                        borderRadius: BorderRadius.circular(40.r),
                                      ),

                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(40.r),
                                      ),
                                      labelText: "Enter Year",
                                      labelStyle: TextStyle(
                                          color: Colors.black.withOpacity(0.7)
                                      ),
                                    ), // Label for the name field
                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                SizedBox(height: 10.h,),
                                Text('Department',style: mediumblack,),
                                SizedBox(height: 10.h,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.textfromfiledcolor,
                                    borderRadius: BorderRadius.circular(40.r),
                                  ),
                                  child: TextFormField(
                                    controller: departmentEditingController,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                        borderRadius: BorderRadius.circular(40.r),
                                      ),

                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(40.r),
                                      ),
                                      labelText: "Department",
                                      labelStyle: TextStyle(
                                          color: Colors.black.withOpacity(0.7)
                                      ),
                                    ), // Label for the name field
                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Text('Roll',style: mediumblack,),
                                SizedBox(height: 10.h,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.textfromfiledcolor,
                                    borderRadius: BorderRadius.circular(40.r),
                                  ),
                                  child: TextFormField(
                                    controller: rollEditingController,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                        borderRadius: BorderRadius.circular(40.r),
                                      ),

                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(40.r),
                                      ),
                                      labelText: "Roll",
                                      labelStyle: TextStyle(
                                          color: Colors.black.withOpacity(0.7)
                                      ),
                                    ), // Label for the name field
                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Text('Registration No.',style: mediumblack,),
                                SizedBox(height: 10.h,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.textfromfiledcolor,
                                    borderRadius: BorderRadius.circular(40.r),
                                  ),
                                  child: TextFormField(
                                    controller: registrationnoEditingController,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                        borderRadius: BorderRadius.circular(40.r),
                                      ),

                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(40.r),
                                      ),
                                      labelText: "Registration No.",
                                      labelStyle: TextStyle(
                                          color: Colors.black.withOpacity(0.7)
                                      ),
                                    ), // Label for the name field
                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                InkWell(
                                  onTap: () async{
                                    if(
                                    catagoriEditingController.text.isEmpty ||
                                        enteryearEditingController.text.isEmpty ||
                                        departmentEditingController.text.isEmpty ||
                                        rollEditingController.text.isEmpty ||
                                        registrationnoEditingController.text.isEmpty
                                    ){
                                      var snackBar = const SnackBar(content: Text('Please All field are required !',
                                        style: TextStyle(fontSize: 15,color: Colors.black),),
                                        backgroundColor: Colors.orange,
                                      );
                                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    }else{
                                      var snackBar = SnackBar(content: Text('Result Not Available, Please Try Again',
                                        style: TextStyle(fontSize: 15,color: Colors.black),),
                                        backgroundColor: Colors.red,
                                      );
                                      ScaffoldMessenger.of(context).showSnackBar(snackBar);

                                    }
                                  },
                                  child: Center(
                                    child: Container(
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
                                      child: Center(child: Text('Submit',style: largeblack,)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Center(child: Text('Or',style: largeblack,)),
                                SizedBox(height: 10.h,),
                                InkWell(
                                  onTap: () async{
                                    Get.to(()=>Resultpdf());
                                    // if(
                                    // catagoriEditingController.text.isEmpty ||
                                    //     enteryearEditingController.text.isEmpty ||
                                    //     departmentEditingController.text.isEmpty ||
                                    //     rollEditingController.text.isEmpty ||
                                    //     registrationnoEditingController.text.isEmpty
                                    // ){
                                    //   var snackBar = const SnackBar(content: Text('Please All field are required !',
                                    //     style: TextStyle(fontSize: 15,color: Colors.black),),
                                    //     backgroundColor: Colors.orange,
                                    //   );
                                    //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    // }else{
                                    //   var snackBar = SnackBar(content: Text('Result Not Available, Please Try Again',
                                    //     style: TextStyle(fontSize: 15,color: Colors.black),),
                                    //     backgroundColor: Colors.red,
                                    //   );
                                    //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    //
                                    // }
                                  },
                                  child: Center(
                                    child: Container(
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
                                      child: Center(child: Text('Pdf',style: largeblack,)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.h,),
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


