// To parse this JSON data, do
//
//     final getOffersListResponseModel = getOffersListResponseModelFromJson(jsonString);

import 'dart:convert';

GetOffersListResponseModel getOffersListResponseModelFromJson(String str) =>
    GetOffersListResponseModel.fromJson(json.decode(str));

String getOffersListResponseModelToJson(GetOffersListResponseModel data) =>
    json.encode(data.toJson());

class GetOffersListResponseModel {
  final int? page;
  final int? limit;
  final List<Result>? results;
  final int? totalResults;
  final int? totalPages;

  GetOffersListResponseModel({
    this.page,
    this.limit,
    this.results,
    this.totalResults,
    this.totalPages,
  });

  factory GetOffersListResponseModel.fromJson(Map<String, dynamic> json) =>
      GetOffersListResponseModel(
        page: json["page"],
        limit: json["limit"],
        results: json["results"] == null
            ? []
            : List<Result>.from(
                json["results"]!.map((x) => Result.fromJson(x))),
        totalResults: json["totalResults"],
        totalPages: json["totalPages"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "limit": limit,
        "results": results == null
            ? []
            : List<dynamic>.from(results!.map((x) => x.toJson())),
        "totalResults": totalResults,
        "totalPages": totalPages,
      };
}

class Result {
  final String? id;
  final String? title;
  final String? benefitsOfSponsee;
  final String? offerType;
  final String? promotionType;
  final DateTime? startDate;
  final DateTime? endDate;
  final CreatedBy? createdBy;
  final DateTime? createdAt;
  String? requestStatus;
  final Media? media;
  final HealthTopicCategory? healthTopicCategory;
  final List<HealthTopic>? healthTopics;
  final bool? isMyOffer;

  Result({
    this.id,
    this.title,
    this.benefitsOfSponsee,
    this.offerType,
    this.promotionType,
    this.startDate,
    this.endDate,
    this.createdBy,
    this.createdAt,
    this.requestStatus,
    this.media,
    this.healthTopicCategory,
    this.healthTopics,
    this.isMyOffer,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
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
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        requestStatus: json["requestStatus"],
        media: json["media"] == null ? null : Media.fromJson(json["media"]),
        healthTopicCategory: json["healthTopicCategory"] == null
            ? null
            : HealthTopicCategory.fromJson(json["healthTopicCategory"]),
        healthTopics: json["healthTopics"] == null
            ? []
            : List<HealthTopic>.from(
                json["healthTopics"]!.map((x) => HealthTopic.fromJson(x))),
        isMyOffer: json["isMyOffer"],
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
        "createdAt": createdAt?.toIso8601String(),
        "requestStatus": requestStatus,
        "media": media?.toJson(),
        "healthTopicCategory": healthTopicCategory?.toJson(),
        "healthTopics": healthTopics == null
            ? []
            : List<dynamic>.from(healthTopics!.map((x) => x.toJson())),
        "isMyOffer": isMyOffer,
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
