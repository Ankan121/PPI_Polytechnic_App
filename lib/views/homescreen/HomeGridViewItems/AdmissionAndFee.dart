import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/main.dart';

import '../../../constants/customtext.dart';
import '../../../controller/homeController.dart';

class Admissionandfee extends StatefulWidget {
  const Admissionandfee({super.key});

  @override
  State<Admissionandfee> createState() => _AdmissionandfeeState();
}

class _AdmissionandfeeState extends State<Admissionandfee> {
  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.white).textLargeFormate(context);
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
                Navigator.pop(context); // এটি ব্যাক ন্যাভিগেশনের জন্য ব্যবহার করা হয়
              },
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: AppColor.whiteColor,size: 30,))
            ],
            title: Text('Admission and Fee',style:context.textTheme.titleLarge?.copyWith(color: AppColor.whiteColor,fontWeight: FontWeight.bold,),),
            centerTitle: true,
          ),
          body: Column(
            children: [
              SizedBox(height: 50.h,),
              Container(
                height: 576.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                  ),
                ),
                child:  SingleChildScrollView(
                  child: Transform.translate(
                    offset: Offset(0, 0),  // X এবং Y এ স্থানান্তর
                    child: GridView.builder(
                      itemCount: homcon.HomeGridviewlist.length,
                      physics: NeverScrollableScrollPhysics(),  // GridView scroll হবে না
                      shrinkWrap: true,  // Content wrap করে ফেলা হবে
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,  // 2 টা column
                        crossAxisSpacing: 10,  // Column এর মধ্যে spacing
                        //mainAxisSpacing: 10,  // Row এর মধ্যে spacing
                        //childAspectRatio: 1,  // Aspect ratio ঠিক রাখতে হবে (height:width = 1:1)
                        childAspectRatio: 3 / 0.8, // প্রতিটি কন্টেইনারের অনুপাত (width : height)
                      ),
                      itemBuilder: (context, index) {
                        print(homcon.HomeGridviewlist[index]['name']);
                        print(homcon.HomeGridviewlist[index]['img']);
                  
                        //print(homcon.homegridviewlistmodelresponse[index]);
                  
                        //var homegridviewitems = homcon.HomeGridview[index];
                  
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: InkWell(
                            onTap: (){
                              Get.toNamed(homcon.HomeGridviewlist[index]['page']);
                              print("all done");
                            },
                            child: Card(
                              color: AppColor.buttoncolor,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100), // কার্ডের কোণ গোলাকার
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                decoration: BoxDecoration(
                                  color: AppColor.buttoncolor,
                                  borderRadius: BorderRadius.circular(40), // রাউন্ড কর্নার
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5), // শ্যাডো রঙ
                                      spreadRadius: 1,
                                      blurRadius: 10,
                                      offset: Offset(5, 5), // শ্যাডো অবস্থান
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'Admission Requirement',
                                    style: largeblack,maxLines: 1,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
      );
    }
      );
  }
  }


