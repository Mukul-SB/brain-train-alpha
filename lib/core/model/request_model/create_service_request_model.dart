// To parse this JSON data, do
//
//     final createServiceRequestModel = createServiceRequestModelFromJson(jsonString);

import 'dart:convert';

CreateServiceRequestModel createServiceRequestModelFromJson(String str) =>
    CreateServiceRequestModel.fromJson(json.decode(str));

String createServiceRequestModelToJson(CreateServiceRequestModel data) =>
    json.encode(data.toJson());

class CreateServiceRequestModel {
  final String? title;
  final String? aboutYourService;
  final String? healthTopicCategoryId;
  final List<String>? healthTopicIds;

  CreateServiceRequestModel({
    this.title,
    this.aboutYourService,
    this.healthTopicCategoryId,
    this.healthTopicIds,
  });

  factory CreateServiceRequestModel.fromJson(Map<String, dynamic> json) =>
      CreateServiceRequestModel(
        title: json["title"],
        aboutYourService: json["aboutYourService"],
        healthTopicCategoryId: json["healthTopicCategoryId"],
        healthTopicIds: json["healthTopicIds"] == null
            ? []
            : List<String>.from(json["healthTopicIds"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "aboutYourService": aboutYourService,
        "healthTopicCategoryId": healthTopicCategoryId,
        "healthTopicIds": healthTopicIds == null
            ? []
            : List<dynamic>.from(healthTopicIds!.map((x) => x)),
      };
}
