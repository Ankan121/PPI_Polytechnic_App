import 'package:flutter/material.dart';
import 'package:ppi/constants/color.dart';

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
    );
  }
}
