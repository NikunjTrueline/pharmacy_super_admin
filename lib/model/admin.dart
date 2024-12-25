// To parse this JSON data, do
//
//     final adminModel = adminModelFromJson(jsonString);

import 'dart:convert';

List<AdminModel> adminModelFromJson(String str) =>
    List<AdminModel>.from(json.decode(str).map((x) => AdminModel.fromJson(x)));

String adminModelToJson(List<AdminModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AdminModel {
  String id;
  String email;
  String name;
  String contactNo;
  String password;
  String confirmPassword;
  bool isActive;

  AdminModel(
      {required this.email,
      required this.name,
      required this.contactNo,
      required this.password,
      required this.confirmPassword,
      required this.isActive,
      required this.id});

  factory AdminModel.fromJson(Map<dynamic, dynamic> json) {
    return AdminModel(
        email: json["email"],
        name: json["name"],
        contactNo: json["contactNo"],
        password: json["password"],
        confirmPassword: json["confirmPassword"],
        isActive: json["isActive"],
        id: json["id"]);
  }

  Map<String, dynamic> toJson() => {
        "email": email,
        "name": name,
        "contactNo": contactNo,
        "password": password,
        "confirmPassword": confirmPassword,
        "isActive": isActive,
        "id": id
      };
}
