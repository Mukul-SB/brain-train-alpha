// To parse this JSON data, do
//
//     final profileResponseModel = profileResponseModelFromJson(jsonString);

import 'dart:convert';

ProfileResponseModel profileResponseModelFromJson(String str) =>
    ProfileResponseModel.fromJson(json.decode(str));

String profileResponseModelToJson(ProfileResponseModel data) =>
    json.encode(data.toJson());

class ProfileResponseModel {
  final String? userId;
  final String? username;
  final String? email;
  final String? name;
  final String? profileImage;
  final String? city;
  final String? state;
  final String? phoneNumber;
  final String? country;
  final int? pincode;
  final int? awardPoints;
  final int? followers;
  final int? following;
  final bool? isFollowing;
  final bool? isFollower;
  final bool? isBlocked;
  final bool? isBlockedByRequiredUser;

  ProfileResponseModel({
    this.phoneNumber,
    this.userId,
    this.username,
    this.email,
    this.name,
    this.profileImage,
    this.city,
    this.state,
    this.country,
    this.pincode,
    this.awardPoints,
    this.followers,
    this.following,
    this.isFollowing,
    this.isFollower,
    this.isBlocked,
    this.isBlockedByRequiredUser,
  });

  ProfileResponseModel copyWith({
    String? userId,
    String? username,
    String? email,
    String? name,
    String? profileImage,
    String? city,
    String? state,
    String? country,
    int? pincode,
    int? awardPoints,
    int? followers,
    int? following,
    bool? isFollowing,
    bool? isFollower,
    bool? isBlocked,
    bool? isBlockedByRequiredUser,
  }) =>
      ProfileResponseModel(
        userId: userId ?? this.userId,
        username: username ?? this.username,
        email: email ?? this.email,
        name: name ?? this.name,
        profileImage: profileImage ?? this.profileImage,
        city: city ?? this.city,
        state: state ?? this.state,
        country: country ?? this.country,
        pincode: pincode ?? this.pincode,
        awardPoints: awardPoints ?? this.awardPoints,
        followers: followers ?? this.followers,
        following: following ?? this.following,
        isFollower: isFollower ?? this.isFollower,
        isFollowing: isFollowing ?? this.isFollowing,
        isBlocked: isBlocked ?? this.isBlocked,
        isBlockedByRequiredUser:
            isBlockedByRequiredUser ?? this.isBlockedByRequiredUser,
      );

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      ProfileResponseModel(
        userId: json["userId"],
        phoneNumber: json["phoneNumber"],
        username: json["username"],
        email: json["email"],
        name: json["name"],
        profileImage: json["profileImage"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        pincode: json["pincode"],
        awardPoints: json["awardPoints"],
        followers: json["followers"],
        following: json["following"],
        isFollower: json["isFollower"],
        isFollowing: json["isFollowing"],
        isBlocked: json["isBlocked"],
        isBlockedByRequiredUser: json["isBlockedByRequiredUser"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "username": username,
        "phoneNumber": phoneNumber,
        "email": email,
        "name": name,
        "profileImage": profileImage,
        "city": city,
        "state": state,
        "country": country,
        "pincode": pincode,
        "awardPoints": awardPoints,
        "followers": followers,
        "following": following,
        "isFollower": isFollower,
        "isFollowing": isFollowing,
        "isBlocked": isBlocked,
        "isBlockedByRequiredUser": isBlockedByRequiredUser,
      };
}
