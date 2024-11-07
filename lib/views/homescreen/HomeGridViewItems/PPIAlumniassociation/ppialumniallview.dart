import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:url_launcher/url_launcher.dart';

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

  // ফোন ডায়ালার খোলার ফাংশন
  void _launchDialPad() async {
    final Uri phoneUri = Uri(
      scheme: 'tel',
      path: widget.ppialumnimodel?.phone,
    );
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw 'Could not launch ${widget.ppialumnimodel?.phone}';
    }
  }

  // ইমেইল পাঠানোর ফাংশন
  void _sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: widget.ppialumnimodel?.email ?? 'example@gmail.com',
      query: 'subject=Hello&body=I would like to contact you', // ঐচ্ছিক
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not send email to ${widget.ppialumnimodel?.email}';
    }
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
              SizedBox(height: 100.h,),
              Stack(
                clipBehavior: Clip.none, // Overflow অংশ কাটবে না
                children: [
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
                                        Center(child: Text('${widget.ppialumnimodel!.name}',style: largeblack,)),
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
                                                    Icons.business,
                                                    color: Colors.blue.withOpacity(0.7), // আইকনের রঙ
                                                    size: 25,            // আইকনের আকার
                                                  ),
                                                ),
                                                title: Text('${widget.ppialumnimodel!.company}',style: mediumblack,),
                                              ),
                                            )),
                                        SizedBox(height: 10.h,),
                                        Card(
                                            color: AppColor.ppialumniview,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: ListTile(
                                                onTap: _launchDialPad, // ফোন নম্বরে ক্লিক করলে ডায়ালার খোলে
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
                                                title: Text('${widget.ppialumnimodel!.phone}',style: mediumblack,),
                                              ),
                                            )),
                                        SizedBox(height: 10.h,),
                                        Card(
                                            color: AppColor.ppialumniview,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: ListTile(
                                                onTap: _sendEmail,
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
                                                title: Text('${widget.ppialumnimodel!.email}',style: mediumblack,),
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
                                                title: Text('${widget.ppialumnimodel!.department}',style: mediumblack,),
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
                                                title: Text('${widget.ppialumnimodel!.roll}',style: mediumblack,),
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
                                                title: Text('${widget.ppialumnimodel!.cgpa}',style: mediumblack,),
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
                        radius: MediaQuery.of(context).size.width * 0.2 - 4, // প্যাডিং এর জন্য একটু ছোট করে দিবে
                        backgroundImage: AssetImage('${widget.ppialumnimodel!.img}'),
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
