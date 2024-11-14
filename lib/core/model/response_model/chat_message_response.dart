// To parse this JSON data, do
//
//     final chatMessageResponse = chatMessageResponseFromJson(jsonString);

import 'dart:convert';

ChatMessageResponse chatMessageResponseFromJson(String str) =>
    ChatMessageResponse.fromJson(json.decode(str));

String chatMessageResponseToJson(ChatMessageResponse data) =>
    json.encode(data.toJson());

class ChatMessageResponse {
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

  ChatMessageResponse({
    this.messageId,
    this.roomId,
    this.senderId,
    this.receiverId,
    this.image,
    this.message,
    this.isSent,
    this.sentAt,
    this.isReceived,
    this.receivedAt,
  });

  factory ChatMessageResponse.fromJson(Map<String, dynamic> json) =>
      ChatMessageResponse(
        messageId: json["messageId"],
        roomId: json["roomId"],
        senderId: json["senderId"],
        receiverId: json["receiverId"],
        image: json["image"],
        message: json["message"],
        isSent: json["isSent"],
        sentAt: json["sentAt"] == null ? null : DateTime.parse(json["sentAt"]),
        isReceived: json["isReceived"],
        receivedAt: json["receivedAt"] == null || json["receivedAt"] == ""
            ? null
            : DateTime.parse(json["receivedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "messageId": messageId,
        "roomId": roomId,
        "senderId": senderId,
        "receiverId": receiverId,
        "image": image,
        "message": message,
        "isSent": isSent,
        "sentAt": sentAt?.toIso8601String(),
        "isReceived": isReceived,
        "receivedAt": receivedAt?.toIso8601String(),
      };
}
