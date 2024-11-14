// To parse this JSON data, do
//
//     final getCommentsModel = getCommentsModelFromJson(jsonString);

import 'dart:convert';

GetCommentsModel getCommentsModelFromJson(String str) =>
    GetCommentsModel.fromJson(json.decode(str));

String getCommentsModelToJson(GetCommentsModel data) =>
    json.encode(data.toJson());

class GetCommentsModel {
  final int? page;
  final int? limit;
  final int? totalResults;
  final int? totalPages;
  final List<Result>? results;

  GetCommentsModel({
    this.page,
    this.limit,
    this.totalResults,
    this.totalPages,
    this.results,
  });

  factory GetCommentsModel.fromJson(Map<String, dynamic> json) =>
      GetCommentsModel(
        page: json["page"],
        limit: json["limit"],
        totalResults: json["totalResults"],
        totalPages: json["totalPages"],
        results: json["results"] == null
            ? []
            : List<Result>.from(
                json["results"]!.map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "limit": limit,
        "totalResults": totalResults,
        "totalPages": totalPages,
        "results": results == null
            ? []
            : List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class Result {
  final String? id;
  final String? comment;
  final DateTime? createdAt;
  final User? user;

  Result({
    this.id,
    this.comment,
    this.createdAt,
    this.user,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["_id"],
        comment: json["comment"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "comment": comment,
        "createdAt": createdAt?.toIso8601String(),
        "user": user?.toJson(),
      };
}

class User {
  final String? id;
  final String? name;
  final String? profileImage;

  User({
    this.id,
    this.name,
    this.profileImage,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        name: json["name"],
        profileImage: json["profileImage"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "profileImage": profileImage,
      };
}
