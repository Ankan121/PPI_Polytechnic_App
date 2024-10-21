import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/main.dart';
import 'package:ppi/views/homescreen/home_all_itemgriview.dart';

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
      drawer: Drawer(),
      body: Stack(
        clipBehavior: Clip.none,
      // Center(
      //   child: Image.asset('assets/homepage/2-ppi logo me.png'),
      // ),

        children: [
          Positioned(
            top: -280.r,
            right: -90.r,
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
                    child: Image.asset('assets/homepage/2-ppi logo me.png',height: 400,width: 400,)),

                // Transform.translate(
                //   offset: Offset(0, -180),  // X এবং Y এ স্থানান্তর করবে
                //   child: GridView.builder(
                //     itemCount: 20,
                //     physics: NeverScrollableScrollPhysics(),
                //     shrinkWrap: true,
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 2, // Number of columns
                //       crossAxisSpacing: 10, // Spacing between columns
                //       mainAxisSpacing: 10, // Spacing between rows
                //     ),            itemBuilder: (BuildContext context, int index) {
                //       return Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Container(
                //           height: 100,
                //           width: 100,
                //           color: Colors.red,
                //
                //         ),
                //       );
                //     },
                //   ),
                // ),
               HomeAllItemgriview(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
