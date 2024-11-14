// To parse this JSON data, do
//
//     final chatUserProfileInfoResponse = chatUserProfileInfoResponseFromJson(jsonString);

import 'dart:convert';

ChatUserProfileInfoResponse chatUserProfileInfoResponseFromJson(String str) =>
    ChatUserProfileInfoResponse.fromJson(json.decode(str));

String chatUserProfileInfoResponseToJson(ChatUserProfileInfoResponse data) =>
    json.encode(data.toJson());

class ChatUserProfileInfoResponse {
  final String? userId;
  final DateTime? lastSeenAt;
  final bool? isOnline;
  final bool? blockStatus;
  final bool? isBlocked;
  final String? username;
  final String? name;
  final bool? isHealthPractitioner;
  final bool? isSponsor;
  final String? userProfileImage;

  ChatUserProfileInfoResponse({
    this.userId,
    this.isBlocked,
    this.blockStatus,
    this.lastSeenAt,
    this.isOnline,
    this.username,
    this.name,
    this.isHealthPractitioner,
    this.isSponsor,
    this.userProfileImage,
  });

  factory ChatUserProfileInfoResponse.fromJson(Map<String, dynamic> json) =>
      ChatUserProfileInfoResponse(
        userId: json["userId"],
        lastSeenAt: json["lastSeenAt"] == null
            ? null
            : DateTime.parse(json["lastSeenAt"]),
        isOnline: json["isOnline"],
        username: json["username"],
        blockStatus: json["blockStatus"],
        isBlocked: json["isBlocked"],
        name: json["name"],
        isHealthPractitioner: json["isHealthPractitioner"],
        isSponsor: json["isSponsor"],
        userProfileImage: json["userProfileImage"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "lastSeenAt": lastSeenAt?.toIso8601String(),
        "isOnline": isOnline,
        "username": username,
        "isBlocked": isBlocked,
        "blockStatus": blockStatus,
        "name": name,
        "isHealthPractitioner": isHealthPractitioner,
        "isSponsor": isSponsor,
        "userProfileImage": userProfileImage,
      };
}
