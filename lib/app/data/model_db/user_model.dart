// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);
// untuk generate code to g.dart
// flutter_zezen % flutter packages pub run build_runner build

import 'package:hive_flutter/hive_flutter.dart';
import 'dart:convert';
part 'user_model.g.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

@HiveType(typeId: 1)
class UserModel {
  @HiveField(0)
  final int page;
  @HiveField(1)
  final int perPage;
  @HiveField(2)
  final int total;
  @HiveField(3)
  final int totalPages;
  @HiveField(4)
  final List<User> data;
  @HiveField(5)
  final Support support;

  UserModel({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
    required this.support,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<User>.from(json["data"].map((x) => User.fromJson(x))),
        support: Support.fromJson(json["support"]),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "support": support.toJson(),
      };
}

@HiveType(typeId: 2)
class User {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String email;
  @HiveField(2)
  final String firstName;
  @HiveField(3)
  final String lastName;
  @HiveField(4)
  final String avatar;

  User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}

@HiveType(typeId: 3)
class Support {
  @HiveField(0)
  final String url;
  @HiveField(1)
  final String text;

  Support({
    required this.url,
    required this.text,
  });

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
      };
}
