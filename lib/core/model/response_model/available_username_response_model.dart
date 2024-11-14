// To parse this JSON data, do
//
//     final availableUsernameResponseModel = availableUsernameResponseModelFromJson(jsonString);

import 'dart:convert';

AvailableUsernameResponseModel availableUsernameResponseModelFromJson(
        String str) =>
    AvailableUsernameResponseModel.fromJson(json.decode(str));

String availableUsernameResponseModelToJson(
        AvailableUsernameResponseModel data) =>
    json.encode(data.toJson());

class AvailableUsernameResponseModel {
  final List<String>? availableUsernames;

  AvailableUsernameResponseModel({
    this.availableUsernames,
  });

  factory AvailableUsernameResponseModel.fromJson(Map<String, dynamic> json) =>
      AvailableUsernameResponseModel(
        availableUsernames: json["availableUsernames"] == null
            ? []
            : List<String>.from(json["availableUsernames"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "availableUsernames": availableUsernames == null
            ? []
            : List<dynamic>.from(availableUsernames!.map((x) => x)),
      };
}
