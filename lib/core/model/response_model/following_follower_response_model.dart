// To parse this JSON data, do
//
//     final followersResponseModel = followersResponseModelFromJson(jsonString);

import 'dart:convert';

FollowersResponseModel followersResponseModelFromJson(String str) =>
    FollowersResponseModel.fromJson(json.decode(str));

String followersResponseModelToJson(FollowersResponseModel data) =>
    json.encode(data.toJson());

class FollowersResponseModel {
  final int? page;
  final int? limit;
  final int? totalResults;
  final int? totalPages;
  final List<Result>? results;

  FollowersResponseModel({
    this.page,
    this.limit,
    this.totalResults,
    this.totalPages,
    this.results,
  });

  factory FollowersResponseModel.fromJson(Map<String, dynamic> json) =>
      FollowersResponseModel(
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
  final String? name;
  final String? username;
  final String? profileImage;
  final bool? isHealthPractitioner;
  final bool? isSponsor;
  final bool? isFollowing;

  Result({
    this.id,
    this.name,
    this.username,
    this.profileImage,
    this.isHealthPractitioner,
    this.isSponsor,
    this.isFollowing,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["_id"],
        name: json["name"],
        username: json["username"],
        profileImage: json["profileImage"],
        isHealthPractitioner: json["isHealthPractitioner"],
        isSponsor: json["isSponsor"],
        isFollowing: json["isFollowing"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "username": username,
        "profileImage": profileImage,
        "isHealthPractitioner": isHealthPractitioner,
        "isSponsor": isSponsor,
        "isFollowing": isFollowing,
      };
}
