import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';

import '../../../../constants/customtext.dart';
import '../../../../controller/homeController.dart';

class StudentOfTheAward extends StatefulWidget {
  const StudentOfTheAward({super.key});

  @override
  State<StudentOfTheAward> createState() => _StudentOfTheAwardState();
}

class _StudentOfTheAwardState extends State<StudentOfTheAward> {
  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);


    return  GetBuilder<HomeContrller>(builder: (HomeContrller homcon){
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
                  border: Border.all(
                    width: 10,
                    color: Colors.white,
                  ),
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                  ),
                ),
                child:  SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h,),
                        Transform.translate(
                          offset: Offset(0, 0),  // X এবং Y এ স্থানান্তর
                          child: GridView.builder(
                            itemCount: homcon.studentoftheaward.length,
                            physics: NeverScrollableScrollPhysics(),  // GridView scroll হবে না
                            shrinkWrap: true,  // Content wrap করে ফেলা হবে
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,  // 2 টা column
                              crossAxisSpacing: 10,  // Column এর মধ্যে spacing
                              //mainAxisSpacing: 10,  // Row এর মধ্যে spacing
                              //childAspectRatio: 1,  // Aspect ratio ঠিক রাখতে হবে (height:width = 1:1)
                              childAspectRatio: 3 / 4.2, // প্রতিটি কন্টেইনারের অনুপাত (width : height)
                            ),
                            itemBuilder: (context, index) {
                              // print(homcon.AdmissionandfeeItems[index]['name']);
                              // print(homcon.AdmissionandfeeItems[index]['img']);

                              //print(homcon.homegridviewlistmodelresponse[index]);

                              String? img = homcon.studentoftheaward[index]['img'];
                              String? session = homcon.studentoftheaward[index]['session'];
                              String? name = homcon.studentoftheaward[index]['Name'];
                              String? roll = homcon.studentoftheaward[index]['Roll'];
                              String? department = homcon.studentoftheaward[index]['Department'];
                              String? cgpa = homcon.studentoftheaward[index]['CGPA'];

                              return Column(
                                children: [
                                  Card(
                                    elevation: 5,
                                    child: Container(
                                      height: 370.h,
                                      width: 400.w,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF5BC51).withOpacity(0.9),
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        //border: Border.all(color: Colors.grey.withOpacity(0.7))
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Center(
                                              child: Container(
                                                width: 131.0,   // Equivalent to 40 mm
                                                height: 169.0,  // Equivalent to 50 mm
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: Colors.white,width: 3),
                                                  image: DecorationImage(
                                                    image: AssetImage(img!),
                                                    fit: BoxFit.fill,
                                                  ),
                                                  //shape: BoxShape.circle,
                                                ),
                                              )
                                            ),
                                            SizedBox(height: 10.h,),
                                            Text(session!,style: largeblack,),
                                            SizedBox(height: 10.h,),
                                            Text(name!,style: largeblack,),
                                            SizedBox(height: 10.h,),
                                            Text(department!,style: largeblack,),
                                            SizedBox(height: 10.h,),
                                            Text(roll!,style: largeblack,),
                                            SizedBox(height: 10.h,),
                                            Text(cgpa!,style: largeblack,),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              );
                            },
                          ),
                        ),
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
