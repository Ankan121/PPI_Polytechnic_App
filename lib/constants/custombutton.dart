import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppi/controller/homeController.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color.dart';
import 'customtext.dart';

class custombuttom extends StatelessWidget {
  final VoidCallback onpresed;
  final String? text;
  final TextStyle? textStyle;

  const custombuttom({
    super.key,
    required this.onpresed,
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeContrller>(builder: (homcon) {
      final TextStyle? largeblack =
      TextFormate(colors: Colors.white).textLargeFormate(context);
      final TextStyle? mediumblack =
      TextFormate(colors: Colors.black).textMediumFormate(context);
      final TextStyle? smallblack =
      TextFormate(colors: Colors.black).textSmallFormate(context);

      return InkWell(
        onTap: onpresed,
        child:
        Center(
          child: Stack(
            children: [
              // মূল বাটন কন্টেইনার
              Container(
                width: 0.9.sw, // ডিভাইস স্ক্রীনের প্রস্থের ৮০%
                height: 80.h, // স্ক্রীন অনুযায়ী উচ্চতা সেট করা
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: Offset(5, 5),
                        blurRadius: 10,
                        spreadRadius: -5,
                      ),
                      BoxShadow(
                        color: Colors.white.withOpacity(0.7),
                        offset: Offset(-5, -5),
                        blurRadius: 10,
                        spreadRadius: -5,
                      ),
                    ],
                  ),
                ),
              ),

              Positioned.fill(
                child: Center(
                  child: Text(
                    text!,
                    style: textStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
