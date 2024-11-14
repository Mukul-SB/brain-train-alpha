// To parse this JSON data, do
//
//     final chatPersonItemResponse = chatPersonItemResponseFromJson(jsonString);

import 'dart:convert';

ChatPersonItemResponse chatPersonItemResponseFromJson(String str) =>
    ChatPersonItemResponse.fromJson(json.decode(str));

String chatPersonItemResponseToJson(ChatPersonItemResponse data) =>
    json.encode(data.toJson());

class ChatPersonItemResponse {
  final String? page;
  final String? limit;
  final List<ChatPersonResultResponse>? results;
  final int? totalResults;
  final int? totalPages;

  ChatPersonItemResponse({
    this.page,
    this.limit,
    this.results,
    this.totalResults,
    this.totalPages,
  });

  factory ChatPersonItemResponse.fromJson(Map<String, dynamic> json) =>
      ChatPersonItemResponse(
        page: json["page"],
        limit: json["limit"],
        results: json["results"] == null
            ? []
            : List<ChatPersonResultResponse>.from(json["results"]!
                .map((x) => ChatPersonResultResponse.fromJson(x))),
        totalResults: json["totalResults"],
        totalPages: json["totalPages"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "limit": limit,
        "results": results == null
            ? []
            : List<dynamic>.from(results!.map((x) => x.toJson())),
        "totalResults": totalResults,
        "totalPages": totalPages,
      };
}

class ChatPersonResultResponse {
  final String? roomId;
  final String? userId;
  final String? name;
  final bool? isHealthPractitioner;
  final bool? isSponsor;
  final String? profileImage;
  final bool? isOnline;
  final String? lastMessage;
  final bool? isLastMessage;
  final bool? isLastImage;
  final bool? isLastVideo;
  final DateTime? lastMessageSentAt;
  final int? unSeenMessageCount;

  ChatPersonResultResponse({
    this.roomId,
    this.userId,
    this.name,
    this.isHealthPractitioner,
    this.isSponsor,
    this.profileImage,
    this.isOnline,
    this.lastMessage,
    this.isLastMessage,
    this.isLastImage,
    this.isLastVideo,
    this.lastMessageSentAt,
    this.unSeenMessageCount,
  });

  factory ChatPersonResultResponse.fromJson(Map<String, dynamic> json) =>
      ChatPersonResultResponse(
        roomId: json["roomId"],
        userId: json["userId"],
        name: json["name"],
        isHealthPractitioner: json["isHealthPractitioner"],
        isSponsor: json["isSponsor"],
        profileImage: json["profileImage"],
        isOnline: json["isOnline"],
        lastMessage: json["lastMessage"],
        isLastMessage: json["isLastMessage"],
        isLastImage: json["isLastImage"],
        isLastVideo: json["isLastVideo"],
        lastMessageSentAt:
            json["lastMessageSentAt"] == null || json["lastMessageSentAt"] == ''
                ? null
                : DateTime.parse(json["lastMessageSentAt"]),
        unSeenMessageCount: json["unSeenMessageCount"],
      );

  Map<String, dynamic> toJson() => {
        "roomId": roomId,
        "userId": userId,
        "name": name,
        "isHealthPractitioner": isHealthPractitioner,
        "isSponsor": isSponsor,
        "profileImage": profileImage,
        "isOnline": isOnline,
        "lastMessage": lastMessage,
        "isLastMessage": isLastMessage,
        "isLastImage": isLastImage,
        "isLastVideo": isLastVideo,
        "lastMessageSentAt": lastMessageSentAt?.toIso8601String(),
        "unSeenMessageCount": unSeenMessageCount,
      };
}
