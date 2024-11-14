// To parse this JSON data, do
//
//     final commonMessageStatusResponse = commonMessageStatusResponseFromJson(jsonString);

import 'dart:convert';

CommonMessageStatusResponse commonMessageStatusResponseFromJson(String str) =>
    CommonMessageStatusResponse.fromJson(json.decode(str));

String commonMessageStatusResponseToJson(CommonMessageStatusResponse data) =>
    json.encode(data.toJson());

class CommonMessageStatusResponse {
  final String? roomId;
  final bool? status;

  CommonMessageStatusResponse({
    this.roomId,
    this.status,
  });

  factory CommonMessageStatusResponse.fromJson(Map<String, dynamic> json) =>
      CommonMessageStatusResponse(
        roomId: json["roomId"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "roomId": roomId,
        "status": status,
      };
}
