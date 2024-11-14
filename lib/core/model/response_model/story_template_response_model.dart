// To parse this JSON data, do
//
//     final storyTemplateResponseModel = storyTemplateResponseModelFromJson(jsonString);

import 'dart:convert';

StoryTemplateResponseModel storyTemplateResponseModelFromJson(String str) =>
    StoryTemplateResponseModel.fromJson(json.decode(str));

String storyTemplateResponseModelToJson(StoryTemplateResponseModel data) =>
    json.encode(data.toJson());

class StoryTemplateResponseModel {
  final String? id;
  final String? title;
  final String? description;

  StoryTemplateResponseModel({
    this.id,
    this.title,
    this.description,
  });

  factory StoryTemplateResponseModel.fromJson(Map<String, dynamic> json) =>
      StoryTemplateResponseModel(
        id: json["_id"],
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "description": description,
      };
}
