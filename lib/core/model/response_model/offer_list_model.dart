// To parse this JSON data, do
//
//     final offerListModel = offerListModelFromJson(jsonString);

import 'dart:convert';

OfferListModel offerListModelFromJson(String str) =>
    OfferListModel.fromJson(json.decode(str));

String offerListModelToJson(OfferListModel data) => json.encode(data.toJson());

class OfferListModel {
  final String? id;
  final String? title;
  final String? benefitsOfSponsee;
  final String? offerType;
  final String? promotionType;
  final DateTime? startDate;
  final DateTime? endDate;
  final CreatedBy? createdBy;
  final Media? media;
  final HealthTopicCategory? healthTopicCategory;
  final List<HealthTopic>? healthTopics;

  OfferListModel({
    this.id,
    this.title,
    this.benefitsOfSponsee,
    this.offerType,
    this.promotionType,
    this.startDate,
    this.endDate,
    this.createdBy,
    this.media,
    this.healthTopicCategory,
    this.healthTopics,
  });

  factory OfferListModel.fromJson(Map<String, dynamic> json) => OfferListModel(
        id: json["_id"],
        title: json["title"],
        benefitsOfSponsee: json["benefitsOfSponsee"],
        offerType: json["offerType"],
        promotionType: json["promotionType"],
        startDate: json["startDate"] == null
            ? null
            : DateTime.parse(json["startDate"]),
        endDate:
            json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
        createdBy: json["createdBy"] == null
            ? null
            : CreatedBy.fromJson(json["createdBy"]),
        media: json["media"] == null ? null : Media.fromJson(json["media"]),
        healthTopicCategory: json["healthTopicCategory"] == null
            ? null
            : HealthTopicCategory.fromJson(json["healthTopicCategory"]),
        healthTopics: json["healthTopics"] == null
            ? []
            : List<HealthTopic>.from(
                json["healthTopics"]!.map((x) => HealthTopic.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "benefitsOfSponsee": benefitsOfSponsee,
        "offerType": offerType,
        "promotionType": promotionType,
        "startDate": startDate?.toIso8601String(),
        "endDate": endDate?.toIso8601String(),
        "createdBy": createdBy?.toJson(),
        "media": media?.toJson(),
        "healthTopicCategory": healthTopicCategory?.toJson(),
        "healthTopics": healthTopics == null
            ? []
            : List<dynamic>.from(healthTopics!.map((x) => x.toJson())),
      };
}

class CreatedBy {
  final String? id;
  final String? name;
  final String? profileImage;

  CreatedBy({
    this.id,
    this.name,
    this.profileImage,
  });

  factory CreatedBy.fromJson(Map<String, dynamic> json) => CreatedBy(
        id: json["_id"],
        name: json["name"],
        profileImage: json["profileImage"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "profileImage": profileImage,
      };
}

class HealthTopicCategory {
  final String? id;
  final String? name;
  final String? type;

  HealthTopicCategory({
    this.id,
    this.name,
    this.type,
  });

  factory HealthTopicCategory.fromJson(Map<String, dynamic> json) =>
      HealthTopicCategory(
        id: json["_id"],
        name: json["name"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "type": type,
      };
}

class HealthTopic {
  final String? id;
  final String? name;

  HealthTopic({
    this.id,
    this.name,
  });

  factory HealthTopic.fromJson(Map<String, dynamic> json) => HealthTopic(
        id: json["_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
      };
}

class Media {
  final String? fileName;
  final String? fileType;

  Media({
    this.fileName,
    this.fileType,
  });

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        fileName: json["fileName"],
        fileType: json["fileType"],
      );

  Map<String, dynamic> toJson() => {
        "fileName": fileName,
        "fileType": fileType,
      };
}
