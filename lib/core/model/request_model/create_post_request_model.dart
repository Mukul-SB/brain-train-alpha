// To parse this JSON data, do
//
//     final createPostRequestModel = createPostRequestModelFromJson(jsonString);

import 'dart:convert';

CreatePostRequestModel createPostRequestModelFromJson(String str) =>
    CreatePostRequestModel.fromJson(json.decode(str));

String createPostRequestModelToJson(CreatePostRequestModel data) =>
    json.encode(data.toJson());

class CreatePostRequestModel {
  final String? title;
  final String? description;
  final List<Image>? images;
  final List<Image>? videos;
  final String? healthTopicCategoryId;
  final List<String>? healthTopicIds;
  final List<String>? tagUserIds;
  final String? type;

  CreatePostRequestModel({
    this.title,
    this.description,
    this.images,
    this.videos,
    this.healthTopicCategoryId,
    this.healthTopicIds,
    this.tagUserIds,
    this.type,
  });

  CreatePostRequestModel copyWith({
    String? title,
    String? description,
    List<Image>? images,
    List<Image>? videos,
    String? healthTopicCategoryId,
    List<String>? healthTopicIds,
    List<String>? tagUserIds,
    String? type,
  }) =>
      CreatePostRequestModel(
        title: title ?? this.title,
        description: description ?? this.description,
        images: images ?? this.images,
        videos: videos ?? this.videos,
        healthTopicCategoryId:
            healthTopicCategoryId ?? this.healthTopicCategoryId,
        healthTopicIds: healthTopicIds ?? this.healthTopicIds,
        tagUserIds: tagUserIds ?? this.tagUserIds,
        type: type ?? this.type,
      );

  factory CreatePostRequestModel.fromJson(Map<String, dynamic> json) =>
      CreatePostRequestModel(
        title: json["title"],
        description: json["description"],
        images: json["images"] == null
            ? []
            : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
        videos: json["videos"] == null
            ? []
            : List<Image>.from(json["videos"]!.map((x) => Image.fromJson(x))),
        healthTopicCategoryId: json["healthTopicCategoryId"],
        healthTopicIds: json["healthTopicIds"] == null
            ? []
            : List<String>.from(json["healthTopicIds"]!.map((x) => x)),
        tagUserIds: json["tagUserIds"] == null
            ? []
            : List<String>.from(json["tagUserIds"]!.map((x) => x)),
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "videos": videos == null
            ? []
            : List<dynamic>.from(videos!.map((x) => x.toJson())),
        "healthTopicCategoryId": healthTopicCategoryId,
        "healthTopicIds": healthTopicIds == null
            ? []
            : List<String>.from(healthTopicIds!.map((x) => x)),
        "tagUserIds": tagUserIds == null
            ? []
            : List<dynamic>.from(tagUserIds!.map((x) => x)),
        "type": type,
      };
}

class Image {
  final String? fileName;
  final int? order;

  Image({
    this.fileName,
    this.order,
  });

  Image copyWith({
    String? fileName,
    int? order,
  }) =>
      Image(
        fileName: fileName ?? this.fileName,
        order: order ?? this.order,
      );

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        fileName: json["fileName"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "fileName": fileName,
        "order": order,
      };
}
