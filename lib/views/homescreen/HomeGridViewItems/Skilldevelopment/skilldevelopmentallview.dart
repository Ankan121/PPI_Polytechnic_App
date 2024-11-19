import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/constants/custombutton.dart';
import 'package:ppi/main.dart';
import 'package:ppi/views/homescreen/HomeGridViewItems/Skilldevelopment/skilldwebview.dart';

import '../../../../../constants/customtext.dart';
import '../../../../../controller/homeController.dart';

class skilldevolopmentallview extends StatefulWidget {
  skilldevolopmentallview({super.key, this.buttonname, required  this.items});
  final List<dynamic> items;
  String? buttonname;


  @override
  State<skilldevolopmentallview> createState() => _skilldevolopmentallviewState();
}

class _skilldevolopmentallviewState extends State<skilldevolopmentallview> {


  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black.withOpacity(0.7)).textLargeFormate(context);
    final TextStyle? largewhite = TextFormate(colors: Colors.white).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black.withOpacity(0.7)).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black.withOpacity(0.7)).textSmallFormate(context);


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
              Get.back(); // এটি ব্যাক ন্যাভিগেশনের জন্য ব্যবহার করা হয়
            },
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: AppColor.whiteColor,size: 30,))
          ],
          title: Text(
            '${widget.buttonname}',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
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
                          itemCount: widget.items.length, // Teachers ডাটা অ্যাক্সেস
                          physics: NeverScrollableScrollPhysics(),  // GridView scroll হবে না
                          shrinkWrap: true,  // Content wrap করে ফেলা হবে
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,  // 2 টা column
                            crossAxisSpacing: 10,  // Column এর মধ্যে spacing
                            //mainAxisSpacing: 10,  // Row এর মধ্যে spacing
                            //childAspectRatio: 1,  // Aspect ratio ঠিক রাখতে হবে (height:width = 1:1)
                            childAspectRatio: 2 / 2.5, // প্রতিটি কন্টেইনারের অনুপাত (width : height)
                          ),
                          itemBuilder: (context, index) {

                            // String? img = homcon.techersdepartmentitems[index]['img'];
                            // String? name = homcon.techersdepartmentitems[index]['name'];
                            // String? designation = homcon.techersdepartmentitems[index]['designation'];
                            // String? phone = homcon.techersdepartmentitems[index]['phone'];
                            // String? email = homcon.techersdepartmentitems[index]['email'];

                            return Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: InkWell(
                                onTap: (){
                                  Get.to(SkillDVebview(
                                    alllink: "${widget.items[index]['link']}",
                                    name: "${widget.items[index]['name']}",
                                  ));
                                  //print("${widget.items[index]['link']}",);
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 120.0.h,
                                      width: 120.0.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black.withOpacity(0.5)),
                                        image: DecorationImage(
                                          image: AssetImage("${widget.items[index]['img']}"),
                                          fit: BoxFit.fill,
                                        ),
                                        //shape: BoxShape.circle,
                                      ),
                                    ),
                                    SizedBox(height: 10.h,),
                                        Text("${widget.items[index]['name']}",style: largeblack,),
                                        // Text("${widget.items[index]['designation']}",style: mediumblack,),

                                    // Column(
                                    //   crossAxisAlignment: CrossAxisAlignment.start,
                                    //   children: [
                                    //     Text("${widget.items[index]['name']}",style: largeblack,),
                                    //     Text("${widget.items[index]['designation']}",style: mediumblack,),
                                    //     Text("${widget.items[index]['phone']}",style: mediumblack,),
                                    //     Text("${widget.items[index]['email']}",style: mediumblack,),
                                    //   ],
                                    // ),
                                  ],
                                ),
                              ),
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


