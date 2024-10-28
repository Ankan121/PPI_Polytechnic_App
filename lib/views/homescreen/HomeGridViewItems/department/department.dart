import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/views/homescreen/HomeGridViewItems/department/departmentallview.dart';

import '../../../../constants/custombutton.dart';
import '../../../../constants/customtext.dart';
import '../../../../controller/homeController.dart';

class Department extends StatefulWidget {
  const Department({super.key});

  @override
  State<Department> createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {
  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);


    return  GetBuilder<HomeContrller>(builder: (HomeContrller homcon) {
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
            'Department',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
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
                          itemCount: homcon.departmentitems.length,
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
                            // print(homcon.AdmissionandfeeItems[index]['name']);
                            // print(homcon.AdmissionandfeeItems[index]['img']);

                            //print(homcon.homegridviewlistmodelresponse[index]);

                            //var homegridviewitems = homcon.HomeGridview[index];

                            return Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: custombuttom(onpresed: (){
                                Get.to(Departmentallview(textview: '${homcon.departmentitems[index]['items']}',name: '${homcon.departmentitems[index]['buttonitem']}',));
                                //print('${homcon.departmentitems[index]['items']}',);
                                // Get.toNamed(
                                //   homcon.departmentitems[index]['page'],
                                // );
                              }, text:  '${homcon.departmentitems[index]['buttonitem']}', textStyle: largeblack,),
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
