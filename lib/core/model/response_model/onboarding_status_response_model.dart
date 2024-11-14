// To parse this JSON data, do
//
//     final onBoardingStatusResponseModel = onBoardingStatusResponseModelFromJson(jsonString);

import 'dart:convert';

OnBoardingStatusResponseModel onBoardingStatusResponseModelFromJson(
        String str) =>
    OnBoardingStatusResponseModel.fromJson(json.decode(str));

String onBoardingStatusResponseModelToJson(
        OnBoardingStatusResponseModel data) =>
    json.encode(data.toJson());

class OnBoardingStatusResponseModel {
  final String? userId;
  final String? name;
  final dynamic profileImage;
  final JoiningCause? joiningCause;
  final List<HealthTopic>? healthTopics;
  final bool? isOnboardingCompleted;

  OnBoardingStatusResponseModel({
    this.userId,
    this.name,
    this.profileImage,
    this.joiningCause,
    this.healthTopics,
    this.isOnboardingCompleted,
  });

  factory OnBoardingStatusResponseModel.fromJson(Map<String, dynamic> json) =>
      OnBoardingStatusResponseModel(
        userId: json["userId"],
        name: json["name"],
        profileImage: json["profileImage"],
        joiningCause: json["joiningCause"] == null
            ? null
            : JoiningCause.fromJson(json["joiningCause"]),
        healthTopics: json["healthTopics"] == null
            ? []
            : List<HealthTopic>.from(
                json["healthTopics"]!.map((x) => HealthTopic.fromJson(x))),
        isOnboardingCompleted: json["isOnboardingCompleted"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "name": name,
        "profileImage": profileImage,
        "joiningCause": joiningCause?.toJson(),
        "healthTopics": healthTopics == null
            ? []
            : List<dynamic>.from(healthTopics!.map((x) => x.toJson())),
        "isOnboardingCompleted": isOnboardingCompleted,
      };
}

class HealthTopic {
  final String? id;
  final String? name;

  HealthTopic({
    this.id,
    this.name,
  });

  factory HealthTopic.fromJson(Map<String, dynamic> json) => HealthTopic(
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
