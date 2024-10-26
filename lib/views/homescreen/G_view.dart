import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppi/controller/homeController.dart';
import 'package:ppi/views/homescreen/HomeGridViewItems/AdmissionandFee/AdmissionAndFee.dart';

import '../../constants/customtext.dart';

class Home_Gridview extends StatefulWidget {
  const Home_Gridview({super.key});

  @override
  State<Home_Gridview> createState() => _Home_GridviewState();
}

class _Home_GridviewState extends State<Home_Gridview> {
  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);


    return GetBuilder<HomeContrller>(builder: (HomeContrller homcon) {
      return Transform.translate(
        offset: Offset(0, -180),  // X এবং Y এ স্থানান্তর
        child: GridView.count(
            physics: NeverScrollableScrollPhysics(),  // GridView scroll হবে না
            shrinkWrap: true,  // Content wrap করে ফেলা হবে
                crossAxisCount: 2,  // 2 টা column
                crossAxisSpacing: 10,  // Column এর মধ্যে spacing
                mainAxisSpacing: 10,  // Row এর মধ্যে spacing
                childAspectRatio: 0.9,  // Aspect ratio ঠিক রাখতে হবে (height:width = 1:1)
            padding: EdgeInsets.all(4.0),
            //childAspectRatio: 1,  // Aspect ratio ঠিক রাখতে হবে (height:width = 1:1)
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: (){
                  Get.to(() => Admissionandfee());
                  print("all done");
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ), // Container এর background color
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),  // Shadow এর রঙ
                                  spreadRadius: 0.1,  // Shadow এর বিস্তার
                                  blurRadius: 10,   // Blur এর পরিমাণ
                                  offset: Offset(0, 5),  // Shadow এর অবস্থান (X,Y)
                                ),
                              ],
                            ),
                            child: Container(
                              width: 80,  // প্রস্থ নির্ধারণ
                              height: 80,  // উচ্চতা নির্ধারণ
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,  // সার্কুলার আকার
                                border: Border.all(  // বর্ডার যুক্ত করা হচ্ছে
                                  color: Colors.white,  // বর্ডারের রঙ
                                  width: 8.0,  // বর্ডারের প্রস্থ
                                ),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.black.withOpacity(0.0),  // শ্যাডোর রঙ এবং স্বচ্ছতা
                                //     spreadRadius: 4,  // শ্যাডো কতটা ছড়াবে
                                //     blurRadius: 10,   // শ্যাডো কতটা ব্লার হবে
                                //     offset: Offset(0, 4),  // শ্যাডোর অবস্থান (X,Y)
                                //   ),
                                //],
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/homepage/3-admission and fee.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),


                            // CircleAvatar(
                            //   radius: 30,
                            //   backgroundColor: Colors.white,
                            //   child: ClipOval(
                            //       child: Image.asset('${homcon.HomeGridviewlist[index]['img']}',fit: BoxFit.fill,)
                            //   ),
                            // ),
                          ),

                          Spacer(),
                          Text('Admission\nand  Fee',style: smallblack,maxLines: 2,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: (){
                  Get.to(() => Admissionandfee());
                  print("all done");
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ), // Container এর background color
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),  // Shadow এর রঙ
                                  spreadRadius: 0.1,  // Shadow এর বিস্তার
                                  blurRadius: 10,   // Blur এর পরিমাণ
                                  offset: Offset(0, 5),  // Shadow এর অবস্থান (X,Y)
                                ),
                              ],
                            ),
                            child: Container(
                              width: 80,  // প্রস্থ নির্ধারণ
                              height: 80,  // উচ্চতা নির্ধারণ
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,  // সার্কুলার আকার
                                border: Border.all(  // বর্ডার যুক্ত করা হচ্ছে
                                  color: Colors.white,  // বর্ডারের রঙ
                                  width: 8.0,  // বর্ডারের প্রস্থ
                                ),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.black.withOpacity(0.0),  // শ্যাডোর রঙ এবং স্বচ্ছতা
                                //     spreadRadius: 4,  // শ্যাডো কতটা ছড়াবে
                                //     blurRadius: 10,   // শ্যাডো কতটা ব্লার হবে
                                //     offset: Offset(0, 4),  // শ্যাডোর অবস্থান (X,Y)
                                //   ),
                                //],
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/homepage/3-admission and fee.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),


                            // CircleAvatar(
                            //   radius: 30,
                            //   backgroundColor: Colors.white,
                            //   child: ClipOval(
                            //       child: Image.asset('${homcon.HomeGridviewlist[index]['img']}',fit: BoxFit.fill,)
                            //   ),
                            // ),
                          ),

                          Spacer(),
                          Text('Admission\nand  Fee',style: smallblack,maxLines: 2,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: (){
                  Get.to(() => Admissionandfee());
                  print("all done");
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ), // Container এর background color
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),  // Shadow এর রঙ
                                  spreadRadius: 0.1,  // Shadow এর বিস্তার
                                  blurRadius: 10,   // Blur এর পরিমাণ
                                  offset: Offset(0, 5),  // Shadow এর অবস্থান (X,Y)
                                ),
                              ],
                            ),
                            child: Container(
                              width: 80,  // প্রস্থ নির্ধারণ
                              height: 80,  // উচ্চতা নির্ধারণ
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,  // সার্কুলার আকার
                                border: Border.all(  // বর্ডার যুক্ত করা হচ্ছে
                                  color: Colors.white,  // বর্ডারের রঙ
                                  width: 8.0,  // বর্ডারের প্রস্থ
                                ),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.black.withOpacity(0.0),  // শ্যাডোর রঙ এবং স্বচ্ছতা
                                //     spreadRadius: 4,  // শ্যাডো কতটা ছড়াবে
                                //     blurRadius: 10,   // শ্যাডো কতটা ব্লার হবে
                                //     offset: Offset(0, 4),  // শ্যাডোর অবস্থান (X,Y)
                                //   ),
                                //],
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/homepage/3-admission and fee.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),


                            // CircleAvatar(
                            //   radius: 30,
                            //   backgroundColor: Colors.white,
                            //   child: ClipOval(
                            //       child: Image.asset('${homcon.HomeGridviewlist[index]['img']}',fit: BoxFit.fill,)
                            //   ),
                            // ),
                          ),

                          Spacer(),
                          Text('Admission\nand  Fee',style: smallblack,maxLines: 2,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: (){
                  Get.to(() => Admissionandfee());
                  print("all done");
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ), // Container এর background color
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),  // Shadow এর রঙ
                                  spreadRadius: 0.1,  // Shadow এর বিস্তার
                                  blurRadius: 10,   // Blur এর পরিমাণ
                                  offset: Offset(0, 5),  // Shadow এর অবস্থান (X,Y)
                                ),
                              ],
                            ),
                            child: Container(
                              width: 80,  // প্রস্থ নির্ধারণ
                              height: 80,  // উচ্চতা নির্ধারণ
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,  // সার্কুলার আকার
                                border: Border.all(  // বর্ডার যুক্ত করা হচ্ছে
                                  color: Colors.white,  // বর্ডারের রঙ
                                  width: 8.0,  // বর্ডারের প্রস্থ
                                ),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.black.withOpacity(0.0),  // শ্যাডোর রঙ এবং স্বচ্ছতা
                                //     spreadRadius: 4,  // শ্যাডো কতটা ছড়াবে
                                //     blurRadius: 10,   // শ্যাডো কতটা ব্লার হবে
                                //     offset: Offset(0, 4),  // শ্যাডোর অবস্থান (X,Y)
                                //   ),
                                //],
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/homepage/3-admission and fee.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),


                            // CircleAvatar(
                            //   radius: 30,
                            //   backgroundColor: Colors.white,
                            //   child: ClipOval(
                            //       child: Image.asset('${homcon.HomeGridviewlist[index]['img']}',fit: BoxFit.fill,)
                            //   ),
                            // ),
                          ),

                          Spacer(),
                          Text('Admission\nand  Fee',style: smallblack,maxLines: 2,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: (){
                  Get.to(() => Admissionandfee());
                  print("all done");
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ), // Container এর background color
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),  // Shadow এর রঙ
                                  spreadRadius: 0.1,  // Shadow এর বিস্তার
                                  blurRadius: 10,   // Blur এর পরিমাণ
                                  offset: Offset(0, 5),  // Shadow এর অবস্থান (X,Y)
                                ),
                              ],
                            ),
                            child: Container(
                              width: 80,  // প্রস্থ নির্ধারণ
                              height: 80,  // উচ্চতা নির্ধারণ
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,  // সার্কুলার আকার
                                border: Border.all(  // বর্ডার যুক্ত করা হচ্ছে
                                  color: Colors.white,  // বর্ডারের রঙ
                                  width: 8.0,  // বর্ডারের প্রস্থ
                                ),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.black.withOpacity(0.0),  // শ্যাডোর রঙ এবং স্বচ্ছতা
                                //     spreadRadius: 4,  // শ্যাডো কতটা ছড়াবে
                                //     blurRadius: 10,   // শ্যাডো কতটা ব্লার হবে
                                //     offset: Offset(0, 4),  // শ্যাডোর অবস্থান (X,Y)
                                //   ),
                                //],
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/homepage/3-admission and fee.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),


                            // CircleAvatar(
                            //   radius: 30,
                            //   backgroundColor: Colors.white,
                            //   child: ClipOval(
                            //       child: Image.asset('${homcon.HomeGridviewlist[index]['img']}',fit: BoxFit.fill,)
                            //   ),
                            // ),
                          ),

                          Spacer(),
                          Text('Admission\nand  Fee',style: smallblack,maxLines: 2,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: (){
                  Get.to(() => Admissionandfee());
                  print("all done");
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ), // Container এর background color
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),  // Shadow এর রঙ
                                  spreadRadius: 0.1,  // Shadow এর বিস্তার
                                  blurRadius: 10,   // Blur এর পরিমাণ
                                  offset: Offset(0, 5),  // Shadow এর অবস্থান (X,Y)
                                ),
                              ],
                            ),
                            child: Container(
                              width: 80,  // প্রস্থ নির্ধারণ
                              height: 80,  // উচ্চতা নির্ধারণ
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,  // সার্কুলার আকার
                                border: Border.all(  // বর্ডার যুক্ত করা হচ্ছে
                                  color: Colors.white,  // বর্ডারের রঙ
                                  width: 8.0,  // বর্ডারের প্রস্থ
                                ),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.black.withOpacity(0.0),  // শ্যাডোর রঙ এবং স্বচ্ছতা
                                //     spreadRadius: 4,  // শ্যাডো কতটা ছড়াবে
                                //     blurRadius: 10,   // শ্যাডো কতটা ব্লার হবে
                                //     offset: Offset(0, 4),  // শ্যাডোর অবস্থান (X,Y)
                                //   ),
                                //],
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/homepage/3-admission and fee.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),


                            // CircleAvatar(
                            //   radius: 30,
                            //   backgroundColor: Colors.white,
                            //   child: ClipOval(
                            //       child: Image.asset('${homcon.HomeGridviewlist[index]['img']}',fit: BoxFit.fill,)
                            //   ),
                            // ),
                          ),

                          Spacer(),
                          Text('Admission\nand  Fee',style: smallblack,maxLines: 2,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: (){
                  Get.to(() => Admissionandfee());
                  print("all done");
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ), // Container এর background color
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),  // Shadow এর রঙ
                                  spreadRadius: 0.1,  // Shadow এর বিস্তার
                                  blurRadius: 10,   // Blur এর পরিমাণ
                                  offset: Offset(0, 5),  // Shadow এর অবস্থান (X,Y)
                                ),
                              ],
                            ),
                            child: Container(
                              width: 80,  // প্রস্থ নির্ধারণ
                              height: 80,  // উচ্চতা নির্ধারণ
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,  // সার্কুলার আকার
                                border: Border.all(  // বর্ডার যুক্ত করা হচ্ছে
                                  color: Colors.white,  // বর্ডারের রঙ
                                  width: 8.0,  // বর্ডারের প্রস্থ
                                ),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.black.withOpacity(0.0),  // শ্যাডোর রঙ এবং স্বচ্ছতা
                                //     spreadRadius: 4,  // শ্যাডো কতটা ছড়াবে
                                //     blurRadius: 10,   // শ্যাডো কতটা ব্লার হবে
                                //     offset: Offset(0, 4),  // শ্যাডোর অবস্থান (X,Y)
                                //   ),
                                //],
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/homepage/3-admission and fee.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),


                            // CircleAvatar(
                            //   radius: 30,
                            //   backgroundColor: Colors.white,
                            //   child: ClipOval(
                            //       child: Image.asset('${homcon.HomeGridviewlist[index]['img']}',fit: BoxFit.fill,)
                            //   ),
                            // ),
                          ),

                          Spacer(),
                          Text('Admission\nand  Fee',style: smallblack,maxLines: 2,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: (){
                  Get.to(() => Admissionandfee());
                  print("all done");
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ), // Container এর background color
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),  // Shadow এর রঙ
                                  spreadRadius: 0.1,  // Shadow এর বিস্তার
                                  blurRadius: 10,   // Blur এর পরিমাণ
                                  offset: Offset(0, 5),  // Shadow এর অবস্থান (X,Y)
                                ),
                              ],
                            ),
                            child: Container(
                              width: 80,  // প্রস্থ নির্ধারণ
                              height: 80,  // উচ্চতা নির্ধারণ
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,  // সার্কুলার আকার
                                border: Border.all(  // বর্ডার যুক্ত করা হচ্ছে
                                  color: Colors.white,  // বর্ডারের রঙ
                                  width: 8.0,  // বর্ডারের প্রস্থ
                                ),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.black.withOpacity(0.0),  // শ্যাডোর রঙ এবং স্বচ্ছতা
                                //     spreadRadius: 4,  // শ্যাডো কতটা ছড়াবে
                                //     blurRadius: 10,   // শ্যাডো কতটা ব্লার হবে
                                //     offset: Offset(0, 4),  // শ্যাডোর অবস্থান (X,Y)
                                //   ),
                                //],
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/homepage/3-admission and fee.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),


                            // CircleAvatar(
                            //   radius: 30,
                            //   backgroundColor: Colors.white,
                            //   child: ClipOval(
                            //       child: Image.asset('${homcon.HomeGridviewlist[index]['img']}',fit: BoxFit.fill,)
                            //   ),
                            // ),
                          ),

                          Spacer(),
                          Text('Admission\nand  Fee',style: smallblack,maxLines: 2,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: (){
                  Get.to(() => Admissionandfee());
                  print("all done");
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ), // Container এর background color
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),  // Shadow এর রঙ
                                  spreadRadius: 0.1,  // Shadow এর বিস্তার
                                  blurRadius: 10,   // Blur এর পরিমাণ
                                  offset: Offset(0, 5),  // Shadow এর অবস্থান (X,Y)
                                ),
                              ],
                            ),
                            child: Container(
                              width: 80,  // প্রস্থ নির্ধারণ
                              height: 80,  // উচ্চতা নির্ধারণ
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,  // সার্কুলার আকার
                                border: Border.all(  // বর্ডার যুক্ত করা হচ্ছে
                                  color: Colors.white,  // বর্ডারের রঙ
                                  width: 8.0,  // বর্ডারের প্রস্থ
                                ),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.black.withOpacity(0.0),  // শ্যাডোর রঙ এবং স্বচ্ছতা
                                //     spreadRadius: 4,  // শ্যাডো কতটা ছড়াবে
                                //     blurRadius: 10,   // শ্যাডো কতটা ব্লার হবে
                                //     offset: Offset(0, 4),  // শ্যাডোর অবস্থান (X,Y)
                                //   ),
                                //],
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/homepage/3-admission and fee.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),


                            // CircleAvatar(
                            //   radius: 30,
                            //   backgroundColor: Colors.white,
                            //   child: ClipOval(
                            //       child: Image.asset('${homcon.HomeGridviewlist[index]['img']}',fit: BoxFit.fill,)
                            //   ),
                            // ),
                          ),

                          Spacer(),
                          Text('Admission\nand  Fee',style: smallblack,maxLines: 2,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: (){
                  Get.to(() => Admissionandfee());
                  print("all done");
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ), // Container এর background color
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),  // Shadow এর রঙ
                                  spreadRadius: 0.1,  // Shadow এর বিস্তার
                                  blurRadius: 10,   // Blur এর পরিমাণ
                                  offset: Offset(0, 5),  // Shadow এর অবস্থান (X,Y)
                                ),
                              ],
                            ),
                            child: Container(
                              width: 80,  // প্রস্থ নির্ধারণ
                              height: 80,  // উচ্চতা নির্ধারণ
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,  // সার্কুলার আকার
                                border: Border.all(  // বর্ডার যুক্ত করা হচ্ছে
                                  color: Colors.white,  // বর্ডারের রঙ
                                  width: 8.0,  // বর্ডারের প্রস্থ
                                ),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.black.withOpacity(0.0),  // শ্যাডোর রঙ এবং স্বচ্ছতা
                                //     spreadRadius: 4,  // শ্যাডো কতটা ছড়াবে
                                //     blurRadius: 10,   // শ্যাডো কতটা ব্লার হবে
                                //     offset: Offset(0, 4),  // শ্যাডোর অবস্থান (X,Y)
                                //   ),
                                //],
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/homepage/3-admission and fee.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),


                            // CircleAvatar(
                            //   radius: 30,
                            //   backgroundColor: Colors.white,
                            //   child: ClipOval(
                            //       child: Image.asset('${homcon.HomeGridviewlist[index]['img']}',fit: BoxFit.fill,)
                            //   ),
                            // ),
                          ),

                          Spacer(),
                          Text('Admission\nand  Fee',style: smallblack,maxLines: 2,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: (){
                  Get.to(() => Admissionandfee());
                  print("all done");
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ), // Container এর background color
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),  // Shadow এর রঙ
                                  spreadRadius: 0.1,  // Shadow এর বিস্তার
                                  blurRadius: 10,   // Blur এর পরিমাণ
                                  offset: Offset(0, 5),  // Shadow এর অবস্থান (X,Y)
                                ),
                              ],
                            ),
                            child: Container(
                              width: 80,  // প্রস্থ নির্ধারণ
                              height: 80,  // উচ্চতা নির্ধারণ
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,  // সার্কুলার আকার
                                border: Border.all(  // বর্ডার যুক্ত করা হচ্ছে
                                  color: Colors.white,  // বর্ডারের রঙ
                                  width: 8.0,  // বর্ডারের প্রস্থ
                                ),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.black.withOpacity(0.0),  // শ্যাডোর রঙ এবং স্বচ্ছতা
                                //     spreadRadius: 4,  // শ্যাডো কতটা ছড়াবে
                                //     blurRadius: 10,   // শ্যাডো কতটা ব্লার হবে
                                //     offset: Offset(0, 4),  // শ্যাডোর অবস্থান (X,Y)
                                //   ),
                                //],
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/homepage/3-admission and fee.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),


                            // CircleAvatar(
                            //   radius: 30,
                            //   backgroundColor: Colors.white,
                            //   child: ClipOval(
                            //       child: Image.asset('${homcon.HomeGridviewlist[index]['img']}',fit: BoxFit.fill,)
                            //   ),
                            // ),
                          ),

                          Spacer(),
                          Text('Admission\nand  Fee',style: smallblack,maxLines: 2,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]
          )
      );
    },);
  }
}
