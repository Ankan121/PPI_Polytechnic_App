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
          CircleAvatar(child: IconButton(onPressed: (){}, icon: Icon(Icons.person,color: AppColor.whiteColor,)))
        ],
      ),
    );
  }
}
