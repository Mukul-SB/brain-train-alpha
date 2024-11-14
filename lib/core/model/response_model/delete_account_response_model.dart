// To parse this JSON data, do
//
//     final deleteAccountResponseModel = deleteAccountResponseModelFromJson(jsonString);

import 'dart:convert';

DeleteAccountResponseModel deleteAccountResponseModelFromJson(String str) =>
    DeleteAccountResponseModel.fromJson(json.decode(str));

String deleteAccountResponseModelToJson(DeleteAccountResponseModel data) =>
    json.encode(data.toJson());

class DeleteAccountResponseModel {
  final int? deletedPosts;
  final int? deletedComments;
  final int? deletedUserDevices;
  final int? deletedPostLikes;
  final int? deletedImages;
  final DeletedUser? deletedUser;

  DeleteAccountResponseModel({
    this.deletedPosts,
    this.deletedComments,
    this.deletedUserDevices,
    this.deletedPostLikes,
    this.deletedImages,
    this.deletedUser,
  });

  factory DeleteAccountResponseModel.fromJson(Map<String, dynamic> json) =>
      DeleteAccountResponseModel(
        deletedPosts: json["deletedPosts"],
        deletedComments: json["deletedComments"],
        deletedUserDevices: json["deletedUserDevices"],
        deletedPostLikes: json["deletedPostLikes"],
        deletedImages: json["deletedImages"],
        deletedUser: json["deletedUser"] == null
            ? null
            : DeletedUser.fromJson(json["deletedUser"]),
      );

  Map<String, dynamic> toJson() => {
        "deletedPosts": deletedPosts,
        "deletedComments": deletedComments,
        "deletedUserDevices": deletedUserDevices,
        "deletedPostLikes": deletedPostLikes,
        "deletedImages": deletedImages,
        "deletedUser": deletedUser?.toJson(),
      };
}

class DeletedUser {
  final String? id;
  final List<String>? cognitoIds;
  final String? username;
  final String? email;
  final String? name;
  final dynamic profileImageId;
  final int? awardPoints;
  final String? city;
  final String? state;
  final String? country;
  final int? pincode;
  final String? joiningCauseId;
  final List<String>? healthTopicIds;
  final List<dynamic>? expertiseIds;
  final String? userType;
  final bool? emailVerified;
  final bool? phoneNumberVerified;
  final bool? isHealthPractitioner;
  final bool? isOnboardingCompleted;
  final bool? isBlocked;
  final bool? deletionRequested;
  final bool? isDeleted;
  final dynamic deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? v;

  DeletedUser({
    this.id,
    this.cognitoIds,
    this.username,
    this.email,
    this.name,
    this.profileImageId,
    this.awardPoints,
    this.city,
    this.state,
    this.country,
    this.pincode,
    this.joiningCauseId,
    this.healthTopicIds,
    this.expertiseIds,
    this.userType,
    this.emailVerified,
    this.phoneNumberVerified,
    this.isHealthPractitioner,
    this.isOnboardingCompleted,
    this.isBlocked,
    this.deletionRequested,
    this.isDeleted,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory DeletedUser.fromJson(Map<String, dynamic> json) => DeletedUser(
        id: json["_id"],
        cognitoIds: json["cognitoIds"] == null
            ? []
            : List<String>.from(json["cognitoIds"]!.map((x) => x)),
        username: json["username"],
        email: json["email"],
        name: json["name"],
        profileImageId: json["profileImageId"],
        awardPoints: json["awardPoints"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        pincode: json["pincode"],
        joiningCauseId: json["joiningCauseId"],
        healthTopicIds: json["healthTopicIds"] == null
            ? []
            : List<String>.from(json["healthTopicIds"]!.map((x) => x)),
        expertiseIds: json["expertiseIds"] == null
            ? []
            : List<dynamic>.from(json["expertiseIds"]!.map((x) => x)),
        userType: json["userType"],
        emailVerified: json["emailVerified"],
        phoneNumberVerified: json["phoneNumberVerified"],
        isHealthPractitioner: json["isHealthPractitioner"],
        isOnboardingCompleted: json["isOnboardingCompleted"],
        isBlocked: json["isBlocked"],
        deletionRequested: json["deletionRequested"],
        isDeleted: json["isDeleted"],
        deletedAt: json["deletedAt"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "cognitoIds": cognitoIds == null
            ? []
            : List<dynamic>.from(cognitoIds!.map((x) => x)),
        "username": username,
        "email": email,
        "name": name,
        "profileImageId": profileImageId,
        "awardPoints": awardPoints,
        "city": city,
        "state": state,
        "country": country,
        "pincode": pincode,
        "joiningCauseId": joiningCauseId,
        "healthTopicIds": healthTopicIds == null
            ? []
            : List<dynamic>.from(healthTopicIds!.map((x) => x)),
        "expertiseIds": expertiseIds == null
            ? []
            : List<dynamic>.from(expertiseIds!.map((x) => x)),
        "userType": userType,
        "emailVerified": emailVerified,
        "phoneNumberVerified": phoneNumberVerified,
        "isHealthPractitioner": isHealthPractitioner,
        "isOnboardingCompleted": isOnboardingCompleted,
        "isBlocked": isBlocked,
        "deletionRequested": deletionRequested,
        "isDeleted": isDeleted,
        "deletedAt": deletedAt,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}
