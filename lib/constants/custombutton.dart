import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppi/controller/homeController.dart';

import 'color.dart';
import 'customtext.dart';

class custombuttom extends StatelessWidget {
  final VoidCallback onpresed;
  final String? text;
  final TextStyle? textStyle;
  const custombuttom({super.key, required this.onpresed, required this.text, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeContrller>(builder: ( homcon) {


      final TextStyle? largeblack = TextFormate(colors: Colors.white).textLargeFormate(context);
      final TextStyle? mediumblack = TextFormate(colors: Colors.black).textMediumFormate(context);
      final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);



      return InkWell(
        onTap: onpresed,
        child: Card(
          color: AppColor.buttoncolor,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100), // কার্ডের কোণ গোলাকার
          ),
          child:
          //Container(
          //     //padding: EdgeInsets.only(top: 0, left: 0, right: 0),
          //     child: Container(
          //         padding: EdgeInsets.all(10),
          //         child: Container(
          //             decoration: BoxDecoration(
          //                 color: Colors.grey,
          //                 borderRadius: BorderRadius.all(Radius.circular(12))),
          //             //padding: EdgeInsets.all(10),
          //             child: Container(
          //               padding: EdgeInsets.zero,
          //               decoration: BoxDecoration(
          //                   color: Colors.blue,
          //                   borderRadius: BorderRadius.all(Radius.circular(8)),
          //                   boxShadow: [
          //                     BoxShadow(
          //                         color: Colors.white,
          //                         blurRadius: 10,
          //                         spreadRadius: 10)
          //                   ]),
          //               // width: double.infinity,
          //               // height: 272,
          //               child: Center(
          //                 child: Text("Content goes here"),
          //               ),
          //             )))),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: AppColor.buttoncolor,
              boxShadow: [

                // BoxShadow(
                //   color: Colors.grey.withOpacity(0.5),
                //   inset = true,
                //   blurRadius: 2.0, // has the effect of softening the shadow
                //   spreadRadius: 2.0, // has the effect of extending the shadow
                //   offset: Offset(
                //     5.0, // horizontal, move right 10
                //     5.0, // vertical, move down 10
                //   ),
                // )
              ],

            ),
            child: Center(
              child: Text(text!,style: textStyle,maxLines: 1,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center
              ),
            ),
          ),
        ),
      );
    },);
    //   ElevatedButton(
    //   onPressed: onpresed,
    //   child: Text(text!,),
    // );
  }
}