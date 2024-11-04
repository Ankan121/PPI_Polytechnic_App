import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ppi/routes/routesName.dart';
import 'package:ppi/views/splashScreen/splashScreen.dart';

import '../views/homescreen/HomeGridViewItems/AdmissionandFee/AdmissionAndFee.dart';
import '../views/homescreen/HomeGridViewItems/AdmissionandFee/admissionview/admissionfee.dart';
import '../views/homescreen/HomeGridViewItems/AdmissionandFee/admissionview/admissionrequirement.dart';
import '../views/homescreen/HomeGridViewItems/AdmissionandFee/admissionview/kanchanfa.dart';
import '../views/homescreen/HomeGridViewItems/AdmissionandFee/admissionview/onlineapply.dart';
import '../views/homescreen/HomeGridViewItems/AdmissionandFee/admissionview/wavier.dart';
import '../views/homescreen/HomeGridViewItems/TeachersInformation/administrative.dart';
import '../views/homescreen/HomeGridViewItems/TeachersInformation/teachers.dart';
import '../views/homescreen/HomeGridViewItems/TeachersInformation/teachersdepartment.dart';
import '../views/homescreen/HomeGridViewItems/aboutinstitute.dart';
import '../views/homescreen/HomeGridViewItems/department/department.dart';
import '../views/homescreen/HomeGridViewItems/department/departmentallview.dart';
import '../views/homescreen/HomeGridViewItems/entertainment.dart';
import '../views/homescreen/HomeGridViewItems/noticeboard.dart';
import '../views/homescreen/HomeGridViewItems/ppialumniassociation.dart';
import '../views/homescreen/HomeGridViewItems/ppicareer.dart';
import '../views/homescreen/HomeGridViewItems/result.dart';
import '../views/homescreen/HomeGridViewItems/skilldevelopment.dart';
import '../views/homescreen/HomeGridViewItems/studentoftheaward.dart';
import '../views/homescreen/HomeGridViewItems/TeachersInformation/teachersinformation.dart';
import '../views/homescreen/homeScreen.dart';

class Routes{
  static Route<dynamic>generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context)=> const Splashscreen());
      case RoutesName.Homescreen:
        return MaterialPageRoute(builder: (context)=>const Homescreen());
      case RoutesName.Admissionandfee:
        return MaterialPageRoute(builder: (context)=> const Admissionandfee());
      case RoutesName.Department:
        return MaterialPageRoute(builder: (context)=> const Department());
      case RoutesName.NoticeBoard:
        return MaterialPageRoute(builder: (context)=> const NoticeBoard());
      case RoutesName.TeachersInformation:
        return MaterialPageRoute(builder: (context)=>  Teachersinformation());
      case RoutesName.Result:
        return MaterialPageRoute(builder: (context)=> const Result());
      case RoutesName.StudentOfTheAward:
        return MaterialPageRoute(builder: (context)=> const StudentOfTheAward());
      case RoutesName.SkillDevelopment:
        return MaterialPageRoute(builder: (context)=> const SkillDevelopment());
      case RoutesName.Entertainment:
        return MaterialPageRoute(builder: (context)=> const Entertainment());
      case RoutesName.PPIAluminiAssociation:
        return MaterialPageRoute(builder: (context)=> const PPIAluminiAssociation());
      case RoutesName.PPICareer:
        return MaterialPageRoute(builder: (context)=> const PPICareer());
      case RoutesName.AboutInstitute:
        return MaterialPageRoute(builder: (context)=> const AboutInstitute());
      case RoutesName.AdmissionRequirement:
        return MaterialPageRoute(builder: (context)=>  AdmissionRequirement());
      case RoutesName.AdmissionFee:
        return MaterialPageRoute(builder: (context)=>  AdmissionFee());
      case RoutesName.OnlineApply:
        return MaterialPageRoute(builder: (context)=>  OnlineApply());
      case RoutesName.Wavier:
        return MaterialPageRoute(builder: (context)=>  Wavier());
      case RoutesName.KanchanFA:
        return MaterialPageRoute(builder: (context)=>  KanchanFA());
      case RoutesName.Departmentallview:
        return MaterialPageRoute(builder: (context)=>  Departmentallview());
      case RoutesName.TeachersInformation:
        return MaterialPageRoute(builder: (context)=>  Teachersinformation());
      case RoutesName.Administrative:
        return MaterialPageRoute(builder: (context)=>  const Administrative());
      case RoutesName.Teachers:
        return MaterialPageRoute(builder: (context)=>   Teachers(items: [],));
      case RoutesName.Teachersdepartment:
        return MaterialPageRoute(builder: (context)=>  const Teachersdepartment());
      default:
        return MaterialPageRoute(builder: (context)=> const Splashscreen());
    }
  }
}