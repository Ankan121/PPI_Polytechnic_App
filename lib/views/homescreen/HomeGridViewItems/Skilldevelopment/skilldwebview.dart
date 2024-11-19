// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ppi/constants/color.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// import '../../../../../constants/customtext.dart';
// import '../../../../../controller/homeController.dart';
//
// class SkillDVebview extends StatefulWidget {
//   const SkillDVebview({super.key, this.alllink});
//   final String? alllink;
//
//   @override
//   State<SkillDVebview> createState() => _SkillDVebviewState();
// }
//
// class _SkillDVebviewState extends State<SkillDVebview> {
//   late final WebViewController _webViewController;
//
//   @override
//   void initState() {
//     super.initState();
//     // WebViewController initializing and loading the URL
//     _webViewController = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..loadRequest(Uri.parse(widget.alllink!));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
//
//     return GetBuilder<HomeContrller>(builder: (HomeContrller homcon) {
//       return Scaffold(
//         backgroundColor: AppColor.homepageappbarcolor,
//         appBar: AppBar(
//           backgroundColor: AppColor.homepageappbarcolor,
//           leading: IconButton(
//             icon: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(100),
//                 border: Border.all(
//                   width: 3,
//                   color: Colors.white,
//                   style: BorderStyle.solid,
//                 ),
//               ),
//               child: Icon(Icons.arrow_back, color: AppColor.whiteColor, size: 25),
//             ),
//             onPressed: () {
//               Get.back();
//             },
//           ),
//           actions: [
//             IconButton(
//               onPressed: () {
//                 Get.back();
//               },
//               icon: Icon(Icons.settings, color: AppColor.whiteColor, size: 30),
//             )
//           ],
//           title: Text(
//             'Teachers Information',
//             style: context.textTheme.titleLarge?.copyWith(
//               color: AppColor.whiteColor,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           centerTitle: true,
//         ),
//         body: WebViewWidget(controller: _webViewController),
//       );
//     });
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:ppi/constants/color.dart';
// import 'package:ppi/views/homescreen/HomeGridViewItems/TeachersInformation/teachersdepartment.dart';
// import 'package:ppi/views/homescreen/HomeGridViewItems/department/departmentallview.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// import '../../../../../constants/custombutton.dart';
// import '../../../../../constants/customtext.dart';
// import '../../../../../controller/homeController.dart';
//
// class SkillDVebview extends StatefulWidget {
//   SkillDVebview({super.key, this.alllink});
//   final alllink;
//
//   @override
//   State<SkillDVebview> createState() => _SkillDVebviewState();
// }
//
// class _SkillDVebviewState extends State<SkillDVebview> {
//   @override
//   Widget build(BuildContext context) {
//
//     final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
//     final TextStyle? mediumblack = TextFormate(colors: Colors.black).textMediumFormate(context);
//     final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);
//
//
//     return  GetBuilder<HomeContrller>(builder: (HomeContrller homcon) {
//       return Scaffold(
//         backgroundColor: AppColor.homepageappbarcolor,
//         appBar: AppBar(
//           backgroundColor: AppColor.homepageappbarcolor,
//           leading: IconButton(
//             icon: Container(
//               // height: 10,
//               // width: 10,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(100),
//                   border: Border.all(
//                     width: 3,
//                     color: Colors.white,
//                     style: BorderStyle.solid,
//                   ),
//                 ),
//                 child: Icon(Icons.arrow_back,color: AppColor.whiteColor,size: 25,)), // এই আইকনটি বাম দিকে অ্যারো দেখাবে
//             onPressed: () {
//               Get.back(); // এটি ব্যাক ন্যাভিগেশনের জন্য ব্যবহার করা হয়
//             },
//           ),
//           actions: [
//             IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.settings,color: AppColor.whiteColor,size: 30,))
//           ],
//           title: Text(
//             'Teachers Information',  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
//             style: context.textTheme.titleLarge?.copyWith(
//               color: AppColor.whiteColor,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           centerTitle: true,
//         ),
//         // body: WebViewWidget(controller: widget.alllink)
//         body: WebViewWidget(controller: widget.alllink)
//       );
//     });
//
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../controller/homeController.dart';

class SkillDVebview extends StatefulWidget {
  SkillDVebview({super.key, required this.alllink, this.name});
  final alllink;
  final name;

  @override
  State<SkillDVebview> createState() => _SkillDVebviewState();
}

class _SkillDVebviewState extends State<SkillDVebview> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = createWebViewController(widget.alllink);
  }

  WebViewController createWebViewController(String url) {
    return WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // লোডিং বার আপডেট করার জন্য কোড
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.alllink));
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeContrller>(builder: (HomeContrller homcon) {
      return Scaffold(
        backgroundColor: AppColor.homepageappbarcolor,
        appBar: AppBar(
          backgroundColor: AppColor.homepageappbarcolor,
          leading: IconButton(
            icon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  width: 3,
                  color: Colors.white,
                  style: BorderStyle.solid,
                ),
              ),
              child: Icon(Icons.arrow_back, color: AppColor.whiteColor, size: 25),
            ),
            onPressed: () {
              Get.back(); // এটি ব্যাক ন্যাভিগেশনের জন্য ব্যবহার করা হয়
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.settings, color: AppColor.whiteColor, size: 30),
            )
          ],
          title: Text(
            widget.name,  // এখানে প্রাপ্ত নামটি দেখানো হচ্ছে
            style: context.textTheme.titleLarge?.copyWith(
              color: AppColor.whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: WebViewWidget(controller: _controller),
      );
    });
  }
}

