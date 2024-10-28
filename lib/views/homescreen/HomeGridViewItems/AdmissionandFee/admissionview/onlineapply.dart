import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:dob_input_field/dob_input_field.dart';
import 'package:ppi/constants/custombutton.dart';
import 'package:ppi/main.dart';

import '../../../../../constants/customtext.dart';
import '../../../../../controller/homeController.dart';

class OnlineApply extends StatefulWidget {
  OnlineApply({super.key,});



  @override
  State<OnlineApply> createState() => _OnlineApplyState();
}

class _OnlineApplyState extends State<OnlineApply> {


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
            'Online Registration',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
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
                              Text('Personal information',style: largeblack,textAlign: TextAlign.left,),
                              SizedBox(height: 10.h,),
                              Text('Student Name',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: "Student Name",
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text('''Father's Name''',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: "Father's Name",
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              SizedBox(height: 10.h,),
                              Text('''Mother's Name''',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: "Mother's Name",
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text('''Mother's Name''',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: "Mother's Name",
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text('Date of Birth',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: "DD/MM/YYYY",
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text('Email Address',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: "*****@gmail.com",
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text('Permanent Address',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: "Permanent Address",
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text('Mobile Number',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: "Mobile Number",
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text('''Parent's mobile number''',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: '''Parent's mobile number''',
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text('Technology',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: "Technology",
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),




                              Text('Academic information',style: largeblack,textAlign: TextAlign.left,),
                              SizedBox(height: 10.h,),
                              Text('Exam Names',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: "Exam Names",
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text('Passing Year',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: "Passing Year",
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text('Category/বিভাগ',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: "Category/বিভাগ ",
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text('Board',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: "Board",
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text('SSC Roll No',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: "SSC Roll No",
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text('SSC Registration Number',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: "SSC Registration Number",
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text('GPA',style: mediumblack,),
                              SizedBox(height: 10.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.textfromfiledcolor,
                                  borderRadius: BorderRadius.circular(40.r),
                                ),
                                child: TextFormField(
                                  //controller: titleEditingController,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    labelText: "GPA",
                                    labelStyle: TextStyle(
                                        color: Colors.black
                                    ),
                                  ), // Label for the name field
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              InkWell(
                                onTap: () async{
                                  // if(titleEditingController.text.isEmpty || died_dateEditingController.text.isEmpty || died_dateEditingController.text.isEmpty){
                                  //   var snackBar = const SnackBar(content: Text('Please All field are required !'));
                                  //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  // }else{
                                  //   await DbHelper().addnote(context, titleEditingController.text, died_dateEditingController.text, descriptionEditingController.text);
                                  // }
                                  var snackBar = SnackBar(content: Text('Online Apply Not Available, Please Try Again',
                                    style: TextStyle(fontSize: 15,color: Colors.black),),
                                  backgroundColor: Colors.red,

                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
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


