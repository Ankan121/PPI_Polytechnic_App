import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/views/homescreen/HomeGridViewItems/PPIAlumniassociation/ppialumniallview.dart';

import '../../../../constants/customtext.dart';
import '../../../../controller/homeController.dart';
import '../../../../model/ppialumniassociation.dart';

class PPIAluminiAssociation extends StatefulWidget {
  const PPIAluminiAssociation({super.key});

  @override
  State<PPIAluminiAssociation> createState() => _PPIAluminiAssociationState();
}

class _PPIAluminiAssociationState extends State<PPIAluminiAssociation> {

  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.find<HomeContrller>().setppialumnimodel();
    });
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
            'PPI Alumni Association',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
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
                        Transform.translate(
                          offset: Offset(0, 0),  // X এবং Y এ স্থানান্তর
                          child: GridView.builder(
                            itemCount: homcon.ppialumnimodelresponse.length,
                            physics: NeverScrollableScrollPhysics(),  // GridView scroll হবে না
                            shrinkWrap: true,  // Content wrap করে ফেলা হবে
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,  // 2 টা column
                              crossAxisSpacing: 10,  // Column এর মধ্যে spacing
                              //mainAxisSpacing: 10,  // Row এর মধ্যে spacing
                              //childAspectRatio: 1,  // Aspect ratio ঠিক রাখতে হবে (height:width = 1:1)
                              childAspectRatio: 3 / 1, // প্রতিটি কন্টেইনারের অনুপাত (width : height)
                            ),
                            itemBuilder: (context, index) {
                              // print(homcon.AdmissionandfeeItems[index]['name']);
                              // print(homcon.AdmissionandfeeItems[index]['img']);

                              //print(homcon.homegridviewlistmodelresponse[index]);

                              Ppialumniassociation? ppialumni = homcon.ppialumnimodelresponse[index];

                              return Column(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Get.to(PPIAlumniAllView(ppialumnimodel: ppialumni));
                                    },
                                    child: Card(
                                      elevation: 5,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            ListTile(
                                              leading: CircleAvatar(
                                                radius: 30, // Adjust the radius as needed
                                                backgroundImage: AssetImage('${ppialumni.img}',),
                                              ),
                                              title: Text("${ppialumni.name}",style: largeblack,),
                                              subtitle: Text('${ppialumni.subtitle}',style: mediumblack,),
                                            ),
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
