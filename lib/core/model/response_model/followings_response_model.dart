import 'dart:convert';

class FollowingsFollowerResponseModel {
  final int? page;
  final int? limit;
  final int? totalResults;
  final int? totalPages;
  final List<FollowingFollowerResult>? results;

  FollowingsFollowerResponseModel({
    this.page,
    this.limit,
    this.totalResults,
    this.totalPages,
    this.results,
  });

  factory FollowingsFollowerResponseModel.fromRawJson(String str) =>
      FollowingsFollowerResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FollowingsFollowerResponseModel.fromJson(Map<String, dynamic> json) =>
      FollowingsFollowerResponseModel(
        page: json["page"].runtimeType == String
            ? int.parse(json["page"])
            : json["page"],
        limit: json["limit"].runtimeType == String
            ? int.parse(json["limit"])
            : json["limit"],
        totalResults: json["totalResults"],
        totalPages: json["totalPages"],
        results: json["results"] == null
            ? []
            : List<FollowingFollowerResult>.from(json["results"]!
                .map((x) => FollowingFollowerResult.fromJson(x))),
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

class FollowingFollowerResult {
  final String? id;
  final String? name;
  final String? username;
  final String? profileImage;
  final bool? isHealthPractitioner;
  final bool? isSponsor;
  bool? isFollowing;

  FollowingFollowerResult({
    this.id,
    this.name,
    this.username,
    this.profileImage,
    this.isHealthPractitioner,
    this.isSponsor,
    this.isFollowing,
  });

  factory FollowingFollowerResult.fromRawJson(String str) =>
      FollowingFollowerResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FollowingFollowerResult.fromJson(Map<String, dynamic> json) =>
      FollowingFollowerResult(
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
