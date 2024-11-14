// To parse this JSON data, do
//
//     final chatMessageListResponse = chatMessageListResponseFromJson(jsonString);

import 'dart:convert';

ChatMessageListResponse chatMessageListResponseFromJson(String str) =>
    ChatMessageListResponse.fromJson(json.decode(str));

String chatMessageListResponseToJson(ChatMessageListResponse data) =>
    json.encode(data.toJson());

class ChatMessageListResponse {
  final String? page;
  final String? limit;
  final int? totalResults;
  final int? totalPages;
  final List<ChatListMessageResponse>? results;

  ChatMessageListResponse({
    this.page,
    this.limit,
    this.totalResults,
    this.totalPages,
    this.results,
  });

  factory ChatMessageListResponse.fromJson(Map<String, dynamic> json) =>
      ChatMessageListResponse(
        page: json["page"],
        limit: json["limit"],
        totalResults: json["totalResults"],
        totalPages: json["totalPages"],
        results: json["results"] == null
            ? []
            : List<ChatListMessageResponse>.from(json["results"]!
                .map((x) => ChatListMessageResponse.fromJson(x))),
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

class ChatListMessageResponse {
  final String? messageId;
  final String? roomId;
  final String? senderId;
  final String? receiverId;
  bool? isSent;
  final String? image;
  DateTime? sentAt;
  bool? isSeen;
  bool? isReceived;
  DateTime? receivedAt;
  DateTime? createdAt;
  final String? video;
  final String? message;

  ChatListMessageResponse({
    this.messageId,
    this.roomId,
    this.senderId,
    this.receiverId,
    this.isSent,
    this.image,
    this.sentAt,
    this.isSeen,
    this.isReceived,
    this.receivedAt,
    this.createdAt,
    this.video,
    this.message,
  });

  factory ChatListMessageResponse.fromJson(Map<String, dynamic> json) =>
      ChatListMessageResponse(
        messageId: json["messageId"],
        roomId: json["roomId"],
        senderId: json["senderId"],
        receiverId: json["receiverId"],
        isSent: json["isSent"],
        image: json["image"],
        sentAt: json["sentAt"] == null ? null : DateTime.parse(json["sentAt"]),
        isSeen: json["isSeen"],
        isReceived: json["isReceived"],
        receivedAt: json["receivedAt"] == null
            ? null
            : DateTime.parse(json["receivedAt"]),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        video: json["video"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "messageId": messageId,
        "roomId": roomId,
        "senderId": senderId,
        "receiverId": receiverId,
        "isSent": isSent,
        "image": image,
        "sentAt": sentAt?.toIso8601String(),
        "isSeen": isSeen,
        "isReceived": isReceived,
        "receivedAt": receivedAt?.toIso8601String(),
        "createdAt": createdAt?.toIso8601String(),
        "video": video,
        "message": message,
      };
}
