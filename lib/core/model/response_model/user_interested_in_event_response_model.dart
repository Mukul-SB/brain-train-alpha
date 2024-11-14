// To parse this JSON data, do
//
//     final userInterestedInEventResponseModel = userInterestedInEventResponseModelFromJson(jsonString);

import 'dart:convert';

UserInterestedInEventListResponseModel
    userInterestedInEventResponseModelFromJson(String str) =>
        UserInterestedInEventListResponseModel.fromJson(json.decode(str));

String userInterestedInEventResponseModelToJson(
        UserInterestedInEventListResponseModel data) =>
    json.encode(data.toJson());

class UserInterestedInEventListResponseModel {
  final int? page;
  final int? limit;
  final int? totalResults;
  final int? totalPages;
  List<UserInterestedInEventResult>? results;

  UserInterestedInEventListResponseModel({
    this.page,
    this.limit,
    this.totalResults,
    this.totalPages,
    this.results,
  });

  factory UserInterestedInEventListResponseModel.fromJson(
          Map<String, dynamic> json) =>
      UserInterestedInEventListResponseModel(
        page: json["page"],
        limit: json["limit"],
        totalResults: json["totalResults"],
        totalPages: json["totalPages"],
        results: json["results"] == null
            ? []
            : List<UserInterestedInEventResult>.from(json["results"]!
                .map((x) => UserInterestedInEventResult.fromJson(x))),
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

class UserInterestedInEventResult {
  final String? id;
  final String? username;
  final String? name;
  final bool? isHealthPractitioner;
  final bool? isSponsor;
  final String? userProfileImage;

  UserInterestedInEventResult({
    this.id,
    this.username,
    this.name,
    this.isHealthPractitioner,
    this.isSponsor,
    this.userProfileImage,
  });

  factory UserInterestedInEventResult.fromJson(Map<String, dynamic> json) =>
      UserInterestedInEventResult(
        id: json["_id"],
        username: json["username"],
        name: json["name"],
        isHealthPractitioner: json["isHealthPractitioner"],
        isSponsor: json["isSponsor"],
        userProfileImage: json["userProfileImage"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "username": username,
        "name": name,
        "isHealthPractitioner": isHealthPractitioner,
        "isSponsor": isSponsor,
        "userProfileImage": userProfileImage,
      };
}
