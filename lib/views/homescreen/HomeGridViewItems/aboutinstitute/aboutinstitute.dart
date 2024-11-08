import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../constants/customtext.dart';
import '../../../../controller/homeController.dart';

class AboutInstitute extends StatefulWidget {
  const AboutInstitute({super.key});

  @override
  State<AboutInstitute> createState() => _AboutInstituteState();
}

class _AboutInstituteState extends State<AboutInstitute> {
  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black.withOpacity(0.7)).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black.withOpacity(0.7)).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black.withOpacity(0.5)).textSmallFormate(context);


    return GetBuilder<HomeContrller>(builder: (HomeContrller homcon) {


      // Get screen width
      double screenWidth = MediaQuery.of(context).size.width;

      // Calculate height based on a 3:2 aspect ratio
      double containerHeight = screenWidth * (2 / 3.3);


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
            'About Institute',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
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
                  border: Border.all(
                    width: 10,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                  ),
                ),
                child:  SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 15.h,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('AT A GLANCE (PPMI)',style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                            SizedBox(height: 10.h,),
                            Table(
                              border: TableBorder.all(),
                              columnWidths: const <int, TableColumnWidth>{
                                0: IntrinsicColumnWidth(),
                                1: FlexColumnWidth(5), // Increase this value to make the second column wider
                              },
                              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                              children: <TableRow>[
                                TableRow(
                                  children: <Widget>[
                                    Container(
                                      child: Center(child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Official Name\nof the Institute', style: mediumblack),
                                      )),
                                    ),
                                    Container(
                                      child: Center(child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Pubergaon Polytechnic and Medical Institute', style: mediumblack),
                                      )),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: <Widget>[
                                    Container(
                                      child: Center(child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Year of\nEstablishment', style: mediumblack),
                                      )),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('2011', style: mediumblack),
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: <Widget>[
                                    Container(
                                      child: Center(child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Government\nAffiliation', style: mediumblack),
                                      )),
                                    ),
                                    Container(
                                      child: Center(child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Bangladesh Technical Education Board, Ministry of Education', style: mediumblack),
                                      )),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: <Widget>[
                                    Container(
                                      child: Center(child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Infrastructural\nStrength', style: mediumblack),
                                      )),
                                    ),
                                    Container(
                                      child: Center(child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('• 500 seating capacity Conference Hall\n• 200 seating capacity Seminar Hall\n• 50 seating capacity Masterclass Hall',
                                            style: mediumblack),
                                      )),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: <Widget>[
                                    Container(
                                      child: Center(child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Number of\nClubs', style: mediumblack),
                                      )),
                                    ),
                                    Container(
                                      child: Center(child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('• Blood Donating Club\n• Computer Club\n• Language Club', style: mediumblack),
                                      )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h,),
                            Text('HISTORY',style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                            SizedBox(height: 10.h,),
                            Center(
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 5,
                                  child: Container(
                                    width: screenWidth,
                                    height: containerHeight,  // Equivalent to 50 mm
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(0),
                                      image: DecorationImage(
                                        image: AssetImage("assets/aboutinformation/1.jpeg"),
                                        fit: BoxFit.fill,
                                      ),
                                      //shape: BoxShape.circle,
                                    ),
                                  ),
                                )
                            ),
                            SizedBox(height: 10.h,),
                            Center(
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 5,
                                  child: Container(
                                    width: screenWidth,
                                    height: containerHeight,  // Equivalent to 50 mm
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(0),
                                      image: DecorationImage(
                                        image: AssetImage("assets/aboutinformation/2.jpeg"),
                                        fit: BoxFit.fill,
                                      ),
                                      //shape: BoxShape.circle,
                                    ),
                                  ),
                                )
                            ),
                            SizedBox(height: 10.h,),
                            Text('Pubergaon Polytechnic and Medical Institute (PPMI): A Journey of Excellence in Technical and Medical Education',
                              style: mediumblack,textAlign: TextAlign.justify,),
                            SizedBox(height: 10.h,),
                            Text("The   history  of   Pubergaon   Polytechnic   and   Medical Institute (PPMI) is  a testament to growth and excellence. Established  in  2011  with  just  three   departments    of diploma-in-engineering, the institute quickly recognized the growing demand for skilled technical manpower and expanded its offerings. Over the years, PPMI has evolved into one of the best and largest privately held polytechnic and  medical  institutes  in  Bangladesh.  With a vision to meet   the nation's   needs    for   mid-level    technical professionals, PPMI now offers courses in eight different technologies, including   the  a  ddition o f a Diploma inTextile Engineering.",
                            style: mediumblack,
                              textAlign: TextAlign.justify,),
                            SizedBox(height: 10.h,),
                            Center(
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 5,
                                  child: Container(
                                    width: screenWidth,
                                    height: containerHeight,  // Equivalent to 50 mm
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(0),
                                      image: DecorationImage(
                                        image: AssetImage("assets/aboutinformation/3.jpeg"),
                                        fit: BoxFit.fill,
                                      ),
                                      //shape: BoxShape.circle,
                                    ),
                                  ),
                                )
                            ),
                            SizedBox(height: 10.h,),
                            Text('MISSION & VISION',style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                            SizedBox(height: 10.h,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('MISSION', style: mediumblack,textAlign: TextAlign.left,),
                                SizedBox(height: 10.h,),
                                Text("Pubergaon  Polytechnic  and Medical Institute's mission is to provide the highest possible standard of quality service through  the  combined  efforts  of customers, employees, and  shareholders  at  all levels of corporate activity in the application  of  organizational  science  and knowledge to real-world business problems.",
                                  style: mediumblack,textAlign: TextAlign.justify,),
                              ],
                            ),
                            SizedBox(height: 10.h,),
                            Text('FACILITIES',style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                            SizedBox(height: 10.h,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Our facilities',
                                  style: mediumblack,textAlign: TextAlign.justify,),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),  // Custom bullet
                                  title: Text('Own campus with huge facilities',style: mediumblack,),
                                ),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),
                                  title: Text('Three huge playgrounds for playing',style: mediumblack,),
                                ),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),
                                  title: Text("Staying in the hostel is completely free"),
                                ),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),
                                  title: Text("Apart from subject teachers there  is on e guide teacherfor every 20 students.",style: mediumblack,),
                                ),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),
                                  title: Text("Additional class facilities.",style: mediumblack,),
                                ),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),
                                  title: Text("Uninterrupted power supply from standard lab and owngenerator.",style: mediumblack,),
                                ),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),
                                  title: Text("06 different labs with modern equipments.",style: mediumblack,),
                                ),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),
                                  title: Text("Free fast support facility.",style: mediumblack,),
                                ),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),
                                  title: Text("Additional lab workshop  practice  and  evening lab use facility for practical work.",style: mediumblack,),
                                ),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),
                                  title: Text("Facilities  for  annual  study tours ,  sports  and  culturalprogrammes.",style: mediumblack,),
                                ),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),
                                  title: Text("A smoke-free, politics-free campus.",style: mediumblack,),
                                ),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),
                                  title: Text("Attractive scholarship benefits.",style: mediumblack,),
                                ),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),
                                  title: Text("Industrial travel facility for each semester.",style: mediumblack,),
                                ),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),
                                  title: Text("Wi-Fi facility for entire campus.",style: mediumblack,),
                                ),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),
                                  title: Text("Modern  teaching  materials and multimedia classroomfacilities.",style: mediumblack,),
                                ),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),
                                  title: Text("Debates, skill competitions and other co-curricular activities are held at UIST which help students develop their talents.",style: mediumblack,),
                                ),
                                ListTile(
                                  leading: Icon(Icons.circle, size: 10, color: Colors.black),
                                  title: Text("The entire campus is monitored by CC cameras.",style: mediumblack,),
                                ),
                                SizedBox(height: 30.h,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.location_pin, color: Colors.black.withOpacity(0.5)),
                                          Center(child: Text("ADDRESS", style: smallblack)),
                                          Center(child: Text("Pubergaon,", style: smallblack)),
                                          Center(child: Text("Atlapur,Rupganj,", style: smallblack)),
                                          Center(child: Text("Narayangan", style: smallblack)),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10.w),
                                    Expanded(
                                      child: InkWell(
                                        onTap: (){
                                          launch("tel:+8801735-364353");
                                        },
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.call, color: Colors.black.withOpacity(0.5)),
                                            Center(child: Text("LET'S TALK", style: smallblack)),
                                            Center(child: Text("Phone: ", style: smallblack)),
                                            Center(child: Text("01735-364353", style: smallblack)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10.w),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          launch("mailto:ppmirg@gmail.com?subject=Hello&body=I would like to contact you.");
                                        },
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.email, color: Colors.black.withOpacity(0.5)),
                                            Center(child: Text("EMAIL US", style: smallblack)),
                                            Center(child: Text("ppmirg@gmail.com", style: smallblack)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 40.h,),




                          ],
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
