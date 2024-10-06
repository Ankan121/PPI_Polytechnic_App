import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ppi/routes/routesName.dart';
import 'package:ppi/views/splashScreen/splashScreen.dart';

class Routes{
  static Route<dynamic>generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context)=> const Splashscreen());
      default:
        return MaterialPageRoute(builder: (context)=> const Splashscreen());
    }
  }
}