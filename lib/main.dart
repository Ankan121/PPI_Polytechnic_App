import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ppi/constants/color.dart';
import 'package:ppi/controller/bindings.dart';
import 'package:ppi/routes/Routes.dart';
import 'package:ppi/routes/routesName.dart';
import 'package:ppi/views/AnimationhomePage.dart';
import 'package:ppi/views/splashScreen/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return GetMaterialApp(
          initialBinding: ControllerBin(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            primaryColor: AppColor.allpageappbarcolor,
            useMaterial3: true,
          ),
          initialRoute: RoutesName.splashScreen,
          onGenerateRoute: Routes.generateRoute,
        );
      },
    );
  }
}