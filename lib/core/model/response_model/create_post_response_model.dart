// To parse this JSON data, do
//
//     final createPostResponseModel = createPostResponseModelFromJson(jsonString);

import 'dart:convert';

CreatePostResponseModel createPostResponseModelFromJson(String str) =>
    CreatePostResponseModel.fromJson(json.decode(str));

String createPostResponseModelToJson(CreatePostResponseModel data) =>
    json.encode(data.toJson());

class CreatePostResponseModel {
  final String? userId;
  final String? title;
  final String? description;
  final List<String>? imageIds;
  final List<String>? videoIds;
  final String? healthTopicCategoryId;
  final List<dynamic>? healthTopicIds;
  final List<String>? tagUserIds;
  final String? type;
  final bool? isBlocked;
  final String? id;
  final DateTime? createdAt;

  CreatePostResponseModel({
    this.userId,
    this.title,
    this.description,
    this.imageIds,
    this.videoIds,
    this.healthTopicCategoryId,
    this.healthTopicIds,
    this.tagUserIds,
    this.type,
    this.isBlocked,
    this.id,
    this.createdAt,
  });

  CreatePostResponseModel copyWith({
    String? userId,
    String? title,
    String? description,
    List<String>? imageIds,
    List<String>? videoIds,
    String? healthTopicCategoryId,
    List<dynamic>? healthTopicIds,
    List<String>? tagUserIds,
    String? type,
    bool? isBlocked,
    String? id,
    DateTime? createdAt,
  }) =>
      CreatePostResponseModel(
        userId: userId ?? this.userId,
        title: title ?? this.title,
        description: description ?? this.description,
        imageIds: imageIds ?? this.imageIds,
        videoIds: videoIds ?? this.videoIds,
        healthTopicCategoryId:
            healthTopicCategoryId ?? this.healthTopicCategoryId,
        healthTopicIds: healthTopicIds ?? this.healthTopicIds,
        tagUserIds: tagUserIds ?? this.tagUserIds,
        type: type ?? this.type,
        isBlocked: isBlocked ?? this.isBlocked,
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
      );

  factory CreatePostResponseModel.fromJson(Map<String, dynamic> json) =>
      CreatePostResponseModel(
        userId: json["userId"],
        title: json["title"],
        description: json["description"],
        imageIds: json["imageIds"] == null
            ? []
            : List<String>.from(json["imageIds"]!.map((x) => x)),
        videoIds: json["videoIds"] == null
            ? []
            : List<String>.from(json["videoIds"]!.map((x) => x)),
        healthTopicCategoryId: json["healthTopicCategoryId"],
        healthTopicIds: json["healthTopicIds"] == null
            ? []
            : List<dynamic>.from(json["healthTopicIds"]!.map((x) => x)),
        tagUserIds: json["tagUserIds"] == null
            ? []
            : List<String>.from(json["tagUserIds"]!.map((x) => x)),
        type: json["type"],
        isBlocked: json["isBlocked"],
        id: json["_id"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "title": title,
        "description": description,
        "imageIds":
            imageIds == null ? [] : List<dynamic>.from(imageIds!.map((x) => x)),
        "videoIds":
            videoIds == null ? [] : List<dynamic>.from(videoIds!.map((x) => x)),
        "healthTopicCategoryId": healthTopicCategoryId,
        "healthTopicIds": healthTopicIds == null
            ? []
            : List<dynamic>.from(healthTopicIds!.map((x) => x)),
        "tagUserIds": tagUserIds == null
            ? []
            : List<dynamic>.from(tagUserIds!.map((x) => x)),
        "type": type,
        "isBlocked": isBlocked,
        "_id": id,
        "createdAt": createdAt?.toIso8601String(),
      };
}
