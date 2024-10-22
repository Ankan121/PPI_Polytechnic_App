import 'package:get/get.dart';

import '../model/home_gridview.dart';

class HomeContrller extends GetxController{

  List  HomeGridviewlist = [
    {
      'name' : 'Admission\nand  Fee',
      'img' : 'assets/homepage/3-admission and fee.png',
    },
    {
      'name' : 'Department',
      'img' : 'assets/homepage/4-department.png',
    },
    {
      'name' : 'Notice Board',
      'img' : 'assets/homepage/5-noticeboard.png',
    },
    {
      'name' : 'Teachers\nInformation',
      'img' : 'assets/homepage/6-teachers information.png',
    },
    {
      'name' : 'Result',
      'img' : 'assets/homepage/7-result.jpg',
    },
    {
      'name' : 'Student of the\nAward',
      'img' : 'assets/homepage/8-student of the award.png',
    },
    {
      'name' : 'Skill Development',
      'img' : 'assets/homepage/9-skill development.png',
    },
    {
      'name' : 'Entertainment',
      'img' : 'assets/homepage/10-entertainment.png',
    },
    {
      'name' : 'PPI Alumni\nAssociation',
      'img' : 'assets/homepage/11-ppi alumni association.png',
    },
    {
      'name' : 'PPI Career',
      'img' : 'assets/homepage/12-ppi career.png',
    },
    {
      'name' : 'About institute',
      'img' : 'assets/homepage/13-about institute.png',
    },
  ];


  //======================Home Screen Gridview========================
  List<Homegridview> homegridviewlistmodelresponse = [];

  //save response from api
  void sethomegridviewlistmodel(){
    homegridviewlistmodelresponse = homegridviewFromJson(HomeGridviewlist);
    update();
  }

}
