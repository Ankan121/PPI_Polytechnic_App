import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/main.dart';
import 'package:ppi/views/homescreen/home_all_itemgriview.dart';

import '../drawer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.homepageappbarcolor,
        actions: [
          IconButton(onPressed: (){}, icon: Container(
            // width: 45, // ছবির প্রস্থ
            // height: 45, // ছবির উচ্চতা
            // decoration: BoxDecoration(
            //   shape: BoxShape.circle,
            //   border: Border.all(color: Colors.white, width: 0.0), // বর্ডার কালার এবং পুরুত্ব
            // ),
            child: CircleAvatar(
              backgroundColor: AppColor.whiteColor,
              child: ClipOval( // ছবি ক্লিপ করার জন্য
                child: Image.asset('assets/homepage/1-appbarprofile.png',fit: BoxFit.fill,),
              ),
            ),
          ))
        ],
      ),
      drawer: CustomDrawer(),
      body: Stack(
        clipBehavior: Clip.none,
      // Center(
      //   child: Image.asset('assets/homepage/2-ppi logo me.png'),
      // ),

        children: [
          Positioned(
            top: -280.r,
            right: -84.r,
            child: Container(
              height: 600,
              width: 600,
              decoration: BoxDecoration(
                color: AppColor.homepageappbarcolor,
                  shape: BoxShape.circle,
              ),
            )
          ),

          // Positioned(
          //   top: -80,
          //     child: Image.asset('assets/homepage/2-ppi logo me.png',height: 400,width: 400,)),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Transform.translate(
                    offset: Offset(0, -80),  // X এবং Y এ স্থানান্তর করবে
                    child: Image.asset('assets/homepage/2-ppi logo me.png',height: 360,width: 360,)),
               HomeAllItemgriview(),
                //Home_Gridview()

              ],
            ),
          ),
        ],
      ),
    );
  }
}
