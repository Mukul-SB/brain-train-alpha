// To parse this JSON data, do
//
//     final expertiseOptionsModel = expertiseOptionsModelFromJson(jsonString);

import 'dart:convert';

ExpertiseOptionsModel expertiseOptionsModelFromJson(String str) =>
    ExpertiseOptionsModel.fromJson(json.decode(str));

String expertiseOptionsModelToJson(ExpertiseOptionsModel data) =>
    json.encode(data.toJson());

class ExpertiseOptionsModel {
  final String? id;
  final String? name;

  ExpertiseOptionsModel({
    this.id,
    this.name,
  });

  ExpertiseOptionsModel copyWith({
    String? id,
    String? name,
  }) =>
      ExpertiseOptionsModel(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory ExpertiseOptionsModel.fromJson(Map<String, dynamic> json) =>
      ExpertiseOptionsModel(
        id: json["_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
      };
}
