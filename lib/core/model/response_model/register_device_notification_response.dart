// To parse this JSON data, do
//
//     final registerDeviceForNotificationResponse = registerDeviceForNotificationResponseFromJson(jsonString);

import 'dart:convert';

RegisterDeviceForNotificationResponse
    registerDeviceForNotificationResponseFromJson(String str) =>
        RegisterDeviceForNotificationResponse.fromJson(json.decode(str));

String registerDeviceForNotificationResponseToJson(
        RegisterDeviceForNotificationResponse data) =>
    json.encode(data.toJson());

class RegisterDeviceForNotificationResponse {
  final String? deviceToken;
  final String? deviceId;
  final String? deviceType;

  RegisterDeviceForNotificationResponse({
    this.deviceToken,
    this.deviceId,
    this.deviceType,
  });

  factory RegisterDeviceForNotificationResponse.fromJson(
          Map<String, dynamic> json) =>
      RegisterDeviceForNotificationResponse(
        deviceToken: json["deviceToken"],
        deviceId: json["deviceId"],
        deviceType: json["deviceType"],
      );

  Map<String, dynamic> toJson() => {
        "deviceToken": deviceToken,
        "deviceId": deviceId,
        "deviceType": deviceType,
      };
}
