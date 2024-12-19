import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/views/Drawer/profile/profile.dart';

import '../../constants/customtext.dart';
import '../db_service/db_herper.dart';
import 'about.dart';


class CustomDrawer extends StatefulWidget {  // Renamed to CustomDrawer
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  List items = [];
  // List searchitems = [];


  void initState(){
    readItemsDatabase();
    super.initState();
  }

  Future<void> readItemsDatabase()async{

    setState(() {
      items = [];
    });

    final allnotes = await DbHelper().readItems();
    print(allnotes);
    setState(() {
      items.addAll(allnotes);
    });
  }

  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);

    final TextStyle? largewhite = TextFormate(colors: Colors.white).textLargeFormate(context);
    final TextStyle? mediumwhite = TextFormate(colors: Colors.white).textMediumFormate(context);
    final TextStyle? smallwhite = TextFormate(colors: Colors.white).textSmallFormate(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 230,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: AppColor.homepageappbarcolor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(0), // Space between border and image
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white, // Border color
                        width: 5, // Border width
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: items.isNotEmpty && items[0]['img'] != null && File(items[0]['img']).existsSync()
                          ? FileImage(File(items[0]['img'])) // ফাইল পাওয়া গেলে সেটি দেখাবে
                          : null, // না পেলে child ব্যবহার করবে
                      child: items.isEmpty || items[0]['img'] == null || !File(items[0]['img']).existsSync()
                          ? Icon(
                        Icons.account_circle, // ডিফল্ট আইকন
                        size: 50, // আইকনের আকার
                        color: Colors.grey, // আইকনের রঙ
                      )
                          : null,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    items.isNotEmpty && items.last['name'] != null
                        ? items.last['name'] // লিস্টের শেষ আইটেমের 'name'
                        : 'Your Name',  // যদি নাম না থাকে, 'Your Name' দেখাবে
                    style: largewhite,
                    overflow: TextOverflow.ellipsis, // টেক্সটের শেষের অংশে '...' দেখাবে যদি এটি বড় হয়ে যায়
                    maxLines: 2, // এক লাইনে সীমাবদ্ধ রাখবে
                  ),
                  Text(
                    items.isNotEmpty && items.last['email'] != null
                        ? items.last['email'] // লিস্টের শেষ আইটেমের 'name'
                        : 'Your Email',  // যদি নাম না থাকে, 'Your Name' দেখাবে
                    style: mediumwhite,
                    //overflow: TextOverflow.ellipsis, // টেক্সটের শেষের অংশে '...' দেখাবে যদি এটি বড় হয়ে যায়
                    //maxLines: 1, // এক লাইনে সীমাবদ্ধ রাখবে
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              // Navigate to home
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Get.to(()=>Profilescreen());
              // Navigate to profile
              //Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Navigate to settings
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.admin_panel_settings_outlined),
            title: Text('Admin Panel'),
            onTap: () {
              // Navigate to settings
              Navigator.pop(context);
              Get.snackbar("Not Available", "Please, Try Again",);
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About'),
            onTap: () {
              Get.to(()=>AboutScreen());
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              // Log out action
              Navigator.pop(context);
              Get.snackbar("Don't Logout", "Please, Try Again",);
            },
          ),
        ],
      ),
    );
  }
}
