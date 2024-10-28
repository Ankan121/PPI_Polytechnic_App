import 'package:get/get.dart';

import '../model/home_gridview.dart';

class HomeContrller extends GetxController{

  //==================Home Scren Gridview===================
  List  HomeGridviewlist = [
    {
      'name' : 'Admission\nand  Fee',
      'img' : 'assets/homepage/3-admission and fee.png',
      'page' : 'Admissionandfee',
    },
    {
      'name' : 'Department',
      'img' : 'assets/homepage/4-department.png',
      'page' : 'Department',
    },
    {
      'name' : 'Notice Board',
      'img' : 'assets/homepage/5-noticeboard.png',
      'page' : 'NoticeBoard',
    },
    {
      'name' : 'Teachers\nInformation',
      'img' : 'assets/homepage/6-teachers information.png',
      'page' : 'TeachersInformation',
    },
    {
      'name' : 'Result',
      'img' : 'assets/homepage/7-result.jpg',
      'page' : 'Result',
    },
    {
      'name' : 'Student of the\nAward',
      'img' : 'assets/homepage/8-student of the award.png',
      'page' : 'StudentOfTheAward',
    },
    {
      'name' : 'Skill Development',
      'img' : 'assets/homepage/9-skill development.png',
      'page' : 'SkillDevelopment',
    },
    {
      'name' : 'Entertainment',
      'img' : 'assets/homepage/10-entertainment.png',
      'page' : 'Entertainment',
    },
    {
      'name' : 'PPI Alumni\nAssociation',
      'img' : 'assets/homepage/11-ppi alumni association.png',
      'page' : 'PPIAluminiAssociation',
    },
    {
      'name' : 'PPI Career',
      'img' : 'assets/homepage/12-ppi career.png',
      'page' : 'PPICareer',
    },
    {
      'name' : 'About institute',
      'img' : 'assets/homepage/13-about institute.png',
      'page' : 'AboutInstitute',
    },
  ];

  //==================Admission and Fee===================
  List AdmissionandfeeItems = [
    {
      'buttonitem' : 'Admission Requirement',
      'page' : 'AdmissionRequirement',
    },
    {
      'buttonitem' : 'Admission Fee',
      'page' : 'AdmissionFee',
    },
    {
      'buttonitem' : 'Wavier',
      'page' : 'Wavier',
    },
    {
      'buttonitem' : 'Kanchan Foundation Association',
      'page' : 'KanchanFA',
    },
    {
      'buttonitem' : 'Online Apply',
      'page' : 'OnlineApply',
    },
  ];

  //==================Department===================
  List departmentitems = [
    {
      'buttonitem' : 'Computer',
      'page' : 'AdmissionRequirement',
    },
    {
      'buttonitem' : 'Electrical',
      'page' : 'AdmissionFee',
    },
    {
      'buttonitem' : 'Mechanical',
      'page' : 'Wavier',
    },
    {
      'buttonitem' : 'Civil',
      'page' : 'KanchanFA',
    },
    {
      'buttonitem' : 'Automobile',
      'page' : 'OnlineApply',
    },
    {
      'buttonitem' : 'Fabric Manufacturing',
      'page' : 'OnlineApply',
    },
    {
      'buttonitem' : 'Fabric Manufacturing',
      'page' : 'OnlineApply',
    },
    {
      'buttonitem' : 'Apparel Manufacturing',
      'page' : 'OnlineApply',
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
