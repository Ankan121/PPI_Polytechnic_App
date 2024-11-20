// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// import '../../../constants/color.dart';
// import '../../../constants/customtext.dart';
// import '../../db_service/db_herper.dart';
//
// class profileadd extends StatefulWidget {
//   const profileadd({super.key});
//
//   @override
//   State<profileadd> createState() => _profileaddState();
// }
//
// class _profileaddState extends State<profileadd> {
//
//   final titleEditingController = TextEditingController();
//   final descriptionEditController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//
//     final TextStyle? large = TextFormate(colors: Colors.white).textLargeFormate(context);
//     final TextStyle? medium = TextFormate(colors: Colors.white).textMediumFormate(context);
//     final TextStyle? small = TextFormate(colors: Colors.white).textSmallFormate(context);
//
//     return Scaffold(
//       backgroundColor: AppColor.homepageappbarcolor,
//       appBar: AppBar(
//         backgroundColor: AppColor.homepageappbarcolor,
//         // leading: IconButton(onPressed: (){
//         //   Get.offAll<Home_Screen>(Home_Screen());
//         //   }, icon: Icon(Icons.arrow_back_rounded,color: Colors.white,)),
//         title: Text('Add',style: large ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//
//             Padding(
//               padding: EdgeInsets.all(0.0),
//               child: SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text("Title",style: large,),
//                       ),
//                       Container(
//                         child: TextFormField(
//                           minLines: 1,
//                           maxLines: null,
//                           controller: titleEditingController,
//                           decoration: InputDecoration(
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.red),
//                               borderRadius: BorderRadius.circular(10.r),
//                             ),
//
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10.r),
//                             ),
//                             contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
//                             labelText: "Enter Title",
//                             labelStyle: TextStyle(
//                                 color: Colors.white
//                             ),
//                           ), // Label for the name field
//                         ),
//                       ),
//
//                       SizedBox(height: 25.h,),
//
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text("Description",style: context.textTheme.titleLarge?.copyWith(color: Colors.white)),
//                       ),
//                       Container(
//                         child: TextFormField(
//                           minLines: 1,
//                           maxLines: null,
//                           controller: descriptionEditController,
//                           decoration: InputDecoration(
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.red),
//                               borderRadius: BorderRadius.circular(1.r),
//                             ),
//
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(1.r),
//                             ),
//                             contentPadding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
//                             labelText: "Enter Description",
//                             labelStyle: TextStyle(
//                                 color: Colors.white
//                             ),
//                           ), // Label for the name field
//                         ),
//                       ),
//
//                       SizedBox(height: 20.0.h),
//                       Center(
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                               backgroundColor: AppColor.homepageappbarcolor,
//                               shadowColor: Colors.greenAccent,
//                               elevation: 3,
//                               fixedSize: Size(306.w, 35.h), // specify width, height
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20.r,))),
//                           onPressed: ()async{
//                             if(titleEditingController.text.isEmpty || descriptionEditController.text.isEmpty){
//                               var snackBar = const SnackBar(content: Text('Please All field are required !'));
//                               ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                             }else{
//                               await DbHelper().addnote(context, titleEditingController.text, descriptionEditController.text);
//                             }
//                           },
//                           child: Text('Save',style: context.textTheme.titleLarge?.copyWith(color: Colors.blue)), // Text on the button
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ppi/constants/color.dart';
import 'package:url_launcher/url_launcher.dart';


import '../../../../constants/customtext.dart';
import '../../../../controller/homeController.dart';
import '../../../../model/ppialumniassociation.dart';
import '../../db_service/db_herper.dart';

class profileadd extends StatefulWidget {
  profileadd({super.key,});
  // final Ppialumniassociation? ppialumnimodel;

  @override
  State<profileadd> createState() => _profileaddState();
}

class _profileaddState extends State<profileadd> {

  File? _image;  // নির্বাচিত ছবির ফাইলটি রাখার জন্য

  final ImagePicker _picker = ImagePicker();

  // ছবির নির্বাচন ফাংশন
  Future<void> _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (image != null) {
        _image = File(image.path);  // নির্বাচিত ছবি ফাইলে রূপান্তর
        print("Image path: ${_image!.path}"); // Printing the local path of the selected image
      }
    });
  }

  final nameEditingController = TextEditingController();
  final departmentEditController = TextEditingController();
  final semesterEditController = TextEditingController();
  final rollEditingController = TextEditingController();
  final registrationEditController = TextEditingController();
  final birthdayEditingController = TextEditingController();
  final emailEditController = TextEditingController();

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
            onPressed: () async {
              Get.back(); // এটি ব্যাক ন্যাভিগেশনের জন্য ব্যবহার করা হয়
              // await DbHelper().noteupdate(widget.id,
              //     {
              //       'title': titleEditingController.text,
              //       'description': descriptionEditingController.text,
              //     },context);
            },
          ),
          title: Text(
            'Profile Edite',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
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
                                    Card(
                                      color: Colors.grey[200], // card color
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
                                              Icons.account_circle ,
                                              color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                              size: 25,            // আইকনের আকার
                                            ),
                                          ),
                                          title: Text('Name', style: TextStyle(color: Colors.black, fontSize: 16)),
                                          subtitle: TextFormField(
                                            controller: nameEditingController, // Controller for handling text input
                                            decoration: InputDecoration(
                                              hintText: 'Enter Name',
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10.h,),
                                    Card(
                                      color: Colors.grey[200], // card color
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
                                          title: Text('Department', style: TextStyle(color: Colors.black, fontSize: 16)),
                                          subtitle: TextFormField(
                                            controller: departmentEditController, // Controller for handling text input
                                            decoration: InputDecoration(
                                              hintText: 'Enter department name',
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10.h,),
                                    Card(
                                      color: Colors.grey[200], // card color
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
                                          title: Text('Semester', style: TextStyle(color: Colors.black, fontSize: 16)),
                                          subtitle: TextFormField(
                                            controller: semesterEditController, // Controller for handling text input
                                            decoration: InputDecoration(
                                              hintText: 'Enter Semester',
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10.h,),
                                    Card(
                                      color: Colors.grey[200], // card color
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
                                          title: Text('Roll Number', style: TextStyle(color: Colors.black, fontSize: 16)),
                                          subtitle: TextFormField(
                                            controller: rollEditingController, // Controller for handling text input
                                            decoration: InputDecoration(
                                              hintText: 'Enter Roll Number',
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10.h,),
                                    Card(
                                      color: Colors.grey[200], // card color
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
                                          title: Text('Registration Number', style: TextStyle(color: Colors.black, fontSize: 16)),
                                          subtitle: TextFormField(
                                            controller: registrationEditController, // Controller for handling text input
                                            decoration: InputDecoration(
                                              hintText: 'Enter Registration Number',
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10.h,),
                                    Card(
                                      color: Colors.grey[200], // card color
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
                                              Icons.cake,
                                              color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                              size: 25,            // আইকনের আকার
                                            ),
                                          ),
                                          title: Text('Birthday', style: TextStyle(color: Colors.black, fontSize: 16)),
                                          subtitle: TextFormField(
                                            controller: birthdayEditingController, // Controller for handling text input
                                            decoration: InputDecoration(
                                              hintText: 'DD/MM/YYYY',
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10.h,),
                                    Card(
                                      color: Colors.grey[200], // card color
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
                                              Icons.cake,
                                              color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                              size: 25,            // আইকনের আকার
                                            ),
                                          ),
                                          title: Text('Email Address', style: TextStyle(color: Colors.black, fontSize: 16)),
                                          subtitle: TextFormField(
                                            controller: emailEditController, // Controller for handling text input
                                            decoration: InputDecoration(
                                              hintText: 'xxx@.com',
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 20.0.h),
                                    Center(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: AppColor.allpageappbarcolor,
                                            shadowColor: Colors.greenAccent,
                                            elevation: 3,
                                            fixedSize: Size(306.w, 35.h), // specify width, height
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20.r,))),
                                        onPressed: () async {
                                          await DbHelper().addnote(context,
                                            _image!.path,
                                            nameEditingController.text,
                                            rollEditingController.text,
                                            birthdayEditingController.text,
                                            departmentEditController.text,
                                            semesterEditController.text,
                                            registrationEditController.text,
                                            emailEditController.text,
                                          );
                                        },
                                        // onPressed: ()async{
                                        //   if(
                                        //   nameEditingController.text.isEmpty ||
                                        //       departmentEditController.text.isEmpty ||
                                        //       semesterEditController.text.isEmpty ||
                                        //       rollEditingController.text.isEmpty ||
                                        //       registrationEditController.text.isEmpty ||
                                        //       birthdayEditingController.text.isEmpty ||
                                        //       emailEditController.text.isEmpty
                                        //   ){
                                        //     var snackBar = const SnackBar(content: Text('Please All field are required !'));
                                        //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                        //   }else{
                                        //     await DbHelper().addnote(context,
                                        //       _image!.path,
                                        //       nameEditingController.text,
                                        //       rollEditingController.text,
                                        //       birthdayEditingController.text,
                                        //       departmentEditController.text,
                                        //       semesterEditController.text,
                                        //       registrationEditController.text,
                                        //       emailEditController.text,
                                        //     );
                                        //   }
                                        // },
                                        child: Text('Save',style: context.textTheme.titleLarge?.copyWith(color: Colors.blue)), // Text on the button
                                      ),
                                    ),
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
                    child: Stack(
                      children: [Container(
                        padding: EdgeInsets.all(2.0), // বর্ডার ও ছবির মধ্যে কিছু জায়গা রাখবে
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey, // বর্ডারের রঙ
                            width: 5.0, // বর্ডারের প্রস্থ
                          ),
                        ),
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.2 - 4, // প্যাডিং এর জন্য একটু ছোট করে দিবে
                          backgroundImage: _image != null
                              ? FileImage(_image!)  // FileImage ব্যবহার করা হয়েছে
                              : null,  // ছবি না থাকলে কিছু না দেখানো হবে
                          child: _image == null
                              ? Icon(
                            Icons.person_rounded,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width * 0.2,  // আকারটি সামঞ্জস্যপূর্ণ
                          )
                              : null,  // যদি ছবি থাকে, তাহলে আইকন দেখানো হবে না
                        ),
                      ),
                        Positioned(
                          top: -MediaQuery.of(context).size.height * -0.14, // স্ক্রিনের উচ্চতার ১০% হিসাবে উপরে থাকবে
                          right: MediaQuery.of(context).size.width * 0.0,  // স্ক্রিনের প্রস্থের ৩০% হিসাবে ডানে অবস্থান করবে
                          child: InkWell(
                            onTap: _pickImage,  // ছবি নির্বাচন করতে বাটন
                            child: Icon(Icons.camera,size: 40,),
                          ),
                        ),
                      ],
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
