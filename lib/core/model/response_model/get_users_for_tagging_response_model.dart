// To parse this JSON data, do
//
//     final getUsersForTaggingResponseModel = getUsersForTaggingResponseModelFromJson(jsonString);

import 'dart:convert';

GetUsersForTaggingResponseModel getUsersForTaggingResponseModelFromJson(
        String str) =>
    GetUsersForTaggingResponseModel.fromJson(json.decode(str));

String getUsersForTaggingResponseModelToJson(
        GetUsersForTaggingResponseModel data) =>
    json.encode(data.toJson());

class GetUsersForTaggingResponseModel {
  final int? page;
  final int? limit;
  final int? totalResults;
  final int? totalPages;
  final List<TagPeopleResult>? results;

  GetUsersForTaggingResponseModel({
    this.page,
    this.limit,
    this.totalResults,
    this.totalPages,
    this.results,
  });

  factory GetUsersForTaggingResponseModel.fromJson(Map<String, dynamic> json) =>
      GetUsersForTaggingResponseModel(
        page: json["page"],
        limit: json["limit"],
        totalResults: json["totalResults"],
        totalPages: json["totalPages"],
        results: json["results"] == null
            ? []
            : List<TagPeopleResult>.from(
                json["results"]!.map((x) => TagPeopleResult.fromJson(x))),
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

class TagPeopleResult {
  final String? id;
  final String? name;
  final String? username;
  final String? profileImage;
  final bool? isHealthPractitioner;
  final bool? isSponsor;

  TagPeopleResult({
    this.id,
    this.name,
    this.username,
    this.profileImage,
    this.isHealthPractitioner,
    this.isSponsor,
  });

  factory TagPeopleResult.fromJson(Map<String, dynamic> json) =>
      TagPeopleResult(
        id: json["_id"],
        name: json["name"],
        username: json["username"],
        profileImage: json["profileImage"],
        isHealthPractitioner: json["isHealthPractitioner"],
        isSponsor: json["isSponsor"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "username": username,
        "profileImage": profileImage,
        "isHealthPractitioner": isHealthPractitioner,
        "isSponsor": isSponsor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TagPeopleResult &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
