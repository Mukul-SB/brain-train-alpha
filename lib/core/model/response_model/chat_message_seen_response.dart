// To parse this JSON data, do
//
//     final chatMessageSeenResponse = chatMessageSeenResponseFromJson(jsonString);

import 'dart:convert';

ChatMessageSeenResponse chatMessageSeenResponseFromJson(String str) =>
    ChatMessageSeenResponse.fromJson(json.decode(str));

String chatMessageSeenResponseToJson(ChatMessageSeenResponse data) =>
    json.encode(data.toJson());

class ChatMessageSeenResponse {
  final String? messageId;
  final String? roomId;
  final String? senderId;
  final String? receiverId;
  final String? message;
  final String? image;
  final bool? isSent;
  final DateTime? sentAt;
  final bool? isReceived;
  final DateTime? receivedAt;
  final bool? isSeen;
  final DateTime? seenAt;

  ChatMessageSeenResponse({
    this.messageId,
    this.image,
    this.roomId,
    this.senderId,
    this.receiverId,
    this.message,
    this.isSent,
    this.sentAt,
    this.isReceived,
    this.receivedAt,
    this.isSeen,
    this.seenAt,
  });

  factory ChatMessageSeenResponse.fromJson(Map<String, dynamic> json) =>
      ChatMessageSeenResponse(
        messageId: json["messageId"],
        roomId: json["roomId"],
        senderId: json["senderId"],
        receiverId: json["receiverId"],
        message: json["message"],
        image: json["image"],
        isSent: json["isSent"],
        sentAt: json["sentAt"] == null ? null : DateTime.parse(json["sentAt"]),
        isReceived: json["isReceived"],
        receivedAt: json["receivedAt"] == null || json["receivedAt"] == ''
            ? null
            : DateTime.parse(json["receivedAt"]),
        isSeen: json["isSeen"],
        seenAt: json["seenAt"] == null ? null : DateTime.parse(json["seenAt"]),
      );

  Map<String, dynamic> toJson() => {
        "messageId": messageId,
        "roomId": roomId,
        "senderId": senderId,
        "receiverId": receiverId,
        "message": message,
        "image": image,
        "isSent": isSent,
        "sentAt": sentAt?.toIso8601String(),
        "isReceived": isReceived,
        "receivedAt": receivedAt?.toIso8601String(),
        "isSeen": isSeen,
        "seenAt": seenAt?.toIso8601String(),
      };
}
