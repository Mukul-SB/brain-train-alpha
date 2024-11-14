// To parse this JSON data, do
//
//     final likedByResponseModel = likedByResponseModelFromJson(jsonString);

import 'dart:convert';

LikedByResponseModel likedByResponseModelFromJson(String str) =>
    LikedByResponseModel.fromJson(json.decode(str));

String likedByResponseModelToJson(LikedByResponseModel data) =>
    json.encode(data.toJson());

class LikedByResponseModel {
  final UserLikes? userLikes;

  LikedByResponseModel({
    this.userLikes,
  });

  factory LikedByResponseModel.fromJson(Map<String, dynamic> json) =>
      LikedByResponseModel(
        userLikes: json["userLikes"] == null
            ? null
            : UserLikes.fromJson(json["userLikes"]),
      );

  Map<String, dynamic> toJson() => {
        "userLikes": userLikes?.toJson(),
      };
}

class UserLikes {
  final int? page;
  final int? limit;
  final int? totalResults;
  final int? totalPages;
  final List<Result>? results;

  UserLikes({
    this.page,
    this.limit,
    this.totalResults,
    this.totalPages,
    this.results,
  });

  factory UserLikes.fromJson(Map<String, dynamic> json) => UserLikes(
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
  final String? postId;
  final DateTime? createdAt;
  final User? user;
  final LikeType? likeType;

  Result({
    this.id,
    this.postId,
    this.createdAt,
    this.user,
    this.likeType,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["_id"],
        postId: json["postId"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        likeType: json["likeType"] == null
            ? null
            : LikeType.fromJson(json["likeType"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "postId": postId,
        "createdAt": createdAt?.toIso8601String(),
        "user": user?.toJson(),
        "likeType": likeType?.toJson(),
      };
}

class LikeType {
  final String? id;

  LikeType({
    this.id,
  });

  factory LikeType.fromJson(Map<String, dynamic> json) => LikeType(
        id: json["_id"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
      };
}

class User {
  final String? id;
  final String? username;
  final String? name;
  final String? profileImage;
  bool? isFollowing;
  final bool? isLoggedInUser;

  User({
    this.id,
    this.username,
    this.name,
    this.profileImage,
    this.isFollowing,
    this.isLoggedInUser,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        username: json["username"],
        name: json["name"],
        profileImage: json["profileImage"],
        isFollowing: json["isFollowing"],
        isLoggedInUser: json["isLoggedInUser"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "username": username,
        "name": name,
        "profileImage": profileImage,
        "isFollowing": isFollowing,
        "isLoggedInUser": isLoggedInUser,
      };
}
