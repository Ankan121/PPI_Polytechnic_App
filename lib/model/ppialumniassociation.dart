// To parse this JSON data, do
//
//     final ppialumniassociation = ppialumniassociationFromJson(jsonString);

import 'dart:convert';

List<Ppialumniassociation> ppialumniassociationFromJson(dynamic str) => List<Ppialumniassociation>.from((str as dynamic).map((x) => Ppialumniassociation.fromJson(x)));

String ppialumniassociationToJson(List<Ppialumniassociation> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Ppialumniassociation {
  String? img;
  String? name;
  String? subtitle;
  String? company;
  String? phone;
  String? email;
  String? department;
  String? roll;
  String? cgpa;

  Ppialumniassociation({
    this.img,
    this.name,
    this.subtitle,
    this.company,
    this.phone,
    this.email,
    this.department,
    this.roll,
    this.cgpa,
  });

  factory Ppialumniassociation.fromJson(Map<String, dynamic> json) => Ppialumniassociation(
    img: json["img"],
    name: json["Name"],
    subtitle: json["subtitle"],
    company: json["Company"],
    phone: json["Phone"],
    email: json["email"],
    department: json["Department"],
    roll: json["Roll"],
    cgpa: json["CGPA"],
  );

  Map<String, dynamic> toJson() => {
    "img": img,
    "Name": name,
    "subtitle": subtitle,
    "Company": company,
    "Phone": phone,
    "email": email,
    "Department": department,
    "Roll": roll,
    "CGPA": cgpa,
  };
}
