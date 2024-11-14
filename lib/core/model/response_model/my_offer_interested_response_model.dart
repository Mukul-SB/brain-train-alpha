// To parse this JSON data, do
//
//     final myOfferInterestedResponseModel = myOfferInterestedResponseModelFromJson(jsonString);

import 'dart:convert';

MyOfferInterestedResponseModel myOfferInterestedResponseModelFromJson(
        String str) =>
    MyOfferInterestedResponseModel.fromJson(json.decode(str));

String myOfferInterestedResponseModelToJson(
        MyOfferInterestedResponseModel data) =>
    json.encode(data.toJson());

class MyOfferInterestedResponseModel {
  final int? page;
  final int? limit;
  final List<Result>? results;
  final int? totalResults;
  final int? totalPages;

  MyOfferInterestedResponseModel({
    this.page,
    this.limit,
    this.results,
    this.totalResults,
    this.totalPages,
  });

  factory MyOfferInterestedResponseModel.fromJson(Map<String, dynamic> json) =>
      MyOfferInterestedResponseModel(
        page: json["page"],
        limit: json["limit"],
        results: json["results"] == null
            ? []
            : List<Result>.from(
                json["results"]!.map((x) => Result.fromJson(x))),
        totalResults: json["totalResults"],
        totalPages: json["totalPages"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "limit": limit,
        "results": results == null
            ? []
            : List<dynamic>.from(results!.map((x) => x.toJson())),
        "totalResults": totalResults,
        "totalPages": totalPages,
      };
}

class Result {
  final String? id;
  final String? description;
  final String? status;
  final User? user;
  final String? pdfUrl;

  Result({
    this.id,
    this.description,
    this.status,
    this.user,
    this.pdfUrl,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["_id"],
        description: json["description"],
        status: json["status"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        pdfUrl: json["pdfUrl"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "description": description,
        "status": status,
        "user": user?.toJson(),
        "pdfUrl": pdfUrl,
      };
}

class User {
  final String? id;
  final String? username;
  final String? name;
  final bool? isHealthPractitioner;
  final bool? isSponsor;
  final String? profileImage;
  final List<Expertise>? expertises;
  final JoiningCause? joiningCause;

  User({
    this.id,
    this.username,
    this.name,
    this.isHealthPractitioner,
    this.isSponsor,
    this.profileImage,
    this.expertises,
    this.joiningCause,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        username: json["username"],
        name: json["name"],
        isHealthPractitioner: json["isHealthPractitioner"],
        isSponsor: json["isSponsor"],
        profileImage: json["profileImage"],
        expertises: json["expertises"] == null
            ? []
            : List<Expertise>.from(
                json["expertises"]!.map((x) => Expertise.fromJson(x))),
        joiningCause: json["joiningCause"] == null
            ? null
            : JoiningCause.fromJson(json["joiningCause"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "username": username,
        "name": name,
        "isHealthPractitioner": isHealthPractitioner,
        "isSponsor": isSponsor,
        "profileImage": profileImage,
        "expertises": expertises == null
            ? []
            : List<dynamic>.from(expertises!.map((x) => x.toJson())),
        "joiningCause": joiningCause?.toJson(),
      };
}

class Expertise {
  final String? id;
  final String? name;

  Expertise({
    this.id,
    this.name,
  });

  factory Expertise.fromJson(Map<String, dynamic> json) => Expertise(
        id: json["_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
      };
}

class JoiningCause {
  final String? id;
  final String? joiningCause;

  JoiningCause({
    this.id,
    this.joiningCause,
  });

  factory JoiningCause.fromJson(Map<String, dynamic> json) => JoiningCause(
        id: json["_id"],
        joiningCause: json["joiningCause"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "joiningCause": joiningCause,
      };
}
