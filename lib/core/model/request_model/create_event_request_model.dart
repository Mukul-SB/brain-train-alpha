// To parse this JSON data, do
//
//     final createEventRequestModel = createEventRequestModelFromJson(jsonString);

import 'dart:convert';

CreateEventRequestModel createEventRequestModelFromJson(String str) =>
    CreateEventRequestModel.fromJson(json.decode(str));

String createEventRequestModelToJson(CreateEventRequestModel data) =>
    json.encode(data.toJson());

class CreateEventRequestModel {
  final String? title;
  final String? description;
  final List<Image>? images;
  final List<Image>? videos;
  final String? personalizedMessage;
  final String? healthTopicCategoryId;
  final List<String>? healthTopicIds;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? address;
  final String? city;
  final String? state;
  final String? country;
  final String? latitude;
  final String? longitude;
  final String? postalCode;
  final List<String>? tagUserIds;

  CreateEventRequestModel({
    this.title,
    this.description,
    this.images,
    this.videos,
    this.personalizedMessage,
    this.healthTopicCategoryId,
    this.healthTopicIds,
    this.startDate,
    this.endDate,
    this.address,
    this.city,
    this.state,
    this.country,
    this.latitude,
    this.longitude,
    this.postalCode,
    this.tagUserIds,
  });

  factory CreateEventRequestModel.fromJson(Map<String, dynamic> json) =>
      CreateEventRequestModel(
        title: json["title"],
        description: json["description"],
        images: json["images"] == null
            ? []
            : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
        videos: json["videos"] == null
            ? []
            : List<Image>.from(json["videos"]!.map((x) => Image.fromJson(x))),
        personalizedMessage: json["personalizedMessage"],
        healthTopicCategoryId: json["healthTopicCategoryId"],
        healthTopicIds: json["healthTopicIds"] == null
            ? []
            : List<String>.from(json["healthTopicIds"]!.map((x) => x)),
        startDate: json["startDate"] == null
            ? null
            : DateTime.parse(json["startDate"]),
        endDate:
            json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
        address: json["address"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        postalCode: json["postalCode"],
        tagUserIds: json["tagUserIds"] == null
            ? []
            : List<String>.from(json["tagUserIds"]!.map((x) => x)),
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
        "personalizedMessage": personalizedMessage,
        "healthTopicCategoryId": healthTopicCategoryId,
        "healthTopicIds": healthTopicIds == null
            ? []
            : List<dynamic>.from(healthTopicIds!.map((x) => x)),
        "startDate": startDate?.toIso8601String(),
        "endDate": endDate?.toIso8601String(),
        "address": address,
        "city": city,
        "state": state,
        "country": country,
        "latitude": latitude,
        "longitude": longitude,
        "postalCode": postalCode,
        "tagUserIds": tagUserIds == null
            ? []
            : List<dynamic>.from(tagUserIds!.map((x) => x)),
      };
}

class Image {
  final String? fileName;
  final int? order;

  Image({
    this.fileName,
    this.order,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        fileName: json["fileName"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "fileName": fileName,
        "order": order,
      };
}
