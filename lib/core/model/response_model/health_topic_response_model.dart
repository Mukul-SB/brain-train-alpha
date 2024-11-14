// To parse this JSON data, do
//
//     final healthTopicResponseModel = healthTopicResponseModelFromJson(jsonString);

import 'dart:convert';

HealthTopicResponseModel healthTopicResponseModelFromJson(String str) =>
    HealthTopicResponseModel.fromJson(json.decode(str));

String healthTopicResponseModelToJson(HealthTopicResponseModel data) =>
    json.encode(data.toJson());

List<HealthTopicResponseModel> masterHealthTopicResponseModelFromJson(
    String str) {
  return List<HealthTopicResponseModel>.from(
      json.decode(str).map((x) => HealthTopicResponseModel.fromJson(x)));
}

String masterHealthTopicResponseModelToJson(
        List<HealthTopicResponseModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HealthTopicResponseModel {
  final String? id;
  final String? name; // Category Name
  final String? type;
  final String? svgCode;
  final List<HealthTopic>? healthTopics; // Sub Categories

  HealthTopicResponseModel({
    this.id,
    this.name,
    this.type,
    this.svgCode,
    this.healthTopics,
  });

  factory HealthTopicResponseModel.fromJson(Map<String, dynamic> json) =>
      HealthTopicResponseModel(
        id: json["_id"],
        name: json["name"],
        type: json["type"],
        svgCode: json["svgCode"],
        healthTopics: json["healthTopics"] == null
            ? []
            : List<HealthTopic>.from(
                json["healthTopics"]!.map((x) => HealthTopic.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "type": type,
        "svgCode": svgCode,
        "healthTopics": healthTopics == null
            ? []
            : List<dynamic>.from(healthTopics!.map((x) => x.toJson())),
      };
}

class HealthTopic {
  final String? id;
  final String? name;
  bool isSelected;

  HealthTopic({this.id, this.name, this.isSelected = false});

  factory HealthTopic.fromJson(Map<String, dynamic> json) => HealthTopic(
        id: json["_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
      };
}
