// To parse this JSON data, do
//
//     final searchUsersResponseModel = searchUsersResponseModelFromJson(jsonString);

import 'dart:convert';

SearchUsersResponseModel searchUsersResponseModelFromJson(String str) =>
    SearchUsersResponseModel.fromJson(json.decode(str));

String searchUsersResponseModelToJson(SearchUsersResponseModel data) =>
    json.encode(data.toJson());

class SearchUsersResponseModel {
  final int? page;
  final int? limit;
  final int? totalResults;
  final int? totalPages;
  final List<Result>? results;

  SearchUsersResponseModel({
    this.page,
    this.limit,
    this.totalResults,
    this.totalPages,
    this.results,
  });

  factory SearchUsersResponseModel.fromJson(Map<String, dynamic> json) =>
      SearchUsersResponseModel(
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
  final String? username;
  final String? name;
  final bool? isHealthPractitioner;
  final bool? isSponsor;
  bool? isFollowing;
  final bool? isFollower;
  final String? profileImage;
  final bool? isLoggedInUser;

  Result({
    this.id,
    this.username,
    this.name,
    this.isHealthPractitioner,
    this.isSponsor,
    this.isFollowing,
    this.isFollower,
    this.profileImage,
    this.isLoggedInUser,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["_id"],
        username: json["username"],
        name: json["name"],
        isHealthPractitioner: json["isHealthPractitioner"],
        isSponsor: json["isSponsor"],
        isFollowing: json["isFollowing"],
        isFollower: json["isFollower"],
        profileImage: json["profileImage"],
        isLoggedInUser: json["isLoggedInUser"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "username": username,
        "name": name,
        "isHealthPractitioner": isHealthPractitioner,
        "isSponsor": isSponsor,
        "isFollowing": isFollowing,
        "isFollower": isFollower,
        "profileImage": profileImage,
        "isLoggedInUser": isLoggedInUser,
      };
}
