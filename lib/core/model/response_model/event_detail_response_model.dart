// To parse this JSON data, do
//
//     final eventDetailResponseModel = eventDetailResponseModelFromJson(jsonString);

import 'dart:convert';

EventDetailResponseModel eventDetailResponseModelFromJson(String str) =>
    EventDetailResponseModel.fromJson(json.decode(str));

String eventDetailResponseModelToJson(EventDetailResponseModel data) =>
    json.encode(data.toJson());

class EventDetailResponseModel {
  final String? id;
  final String? title;
  final String? description;
  final String? personalizedMessage;
  final DateTime? startDate;
  final DateTime? endDate;
  final Location? location;
  final String? country;
  final String? state;
  final String? city;
  final String? postalCode;
  final String? address;
  final DateTime? createdAt;
  final bool? isMyEvent;
  bool? iAmInterested;
  final HealthTopicCategory? healthTopicCategory;
  final List<HealthTopicCategory>? healthTopics;
  final List<HealthTopicCategory>? tagUsers;
  final List<Image>? images;
  final List<Image>? videos;

  EventDetailResponseModel({
    this.id,
    this.title,
    this.iAmInterested,
    this.description,
    this.personalizedMessage,
    this.startDate,
    this.endDate,
    this.location,
    this.country,
    this.state,
    this.city,
    this.postalCode,
    this.address,
    this.createdAt,
    this.isMyEvent,
    this.healthTopicCategory,
    this.healthTopics,
    this.tagUsers,
    this.images,
    this.videos,
  });

  factory EventDetailResponseModel.fromJson(Map<String, dynamic> json) =>
      EventDetailResponseModel(
        id: json["_id"],
        title: json["title"],
        description: json["description"],
        personalizedMessage: json["personalizedMessage"],
        startDate: json["startDate"] == null
            ? null
            : DateTime.parse(json["startDate"]),
        endDate:
            json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
        location: json["location"] == null
            ? null
            : Location.fromJson(json["location"]),
        country: json["country"],
        state: json["state"],
        city: json["city"],
        postalCode: json["postalCode"],
        address: json["address"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        isMyEvent: json["isMyEvent"],
        iAmInterested: json["iAmInterested"],
        healthTopicCategory: json["healthTopicCategory"] == null
            ? null
            : HealthTopicCategory.fromJson(json["healthTopicCategory"]),
        healthTopics: json["healthTopics"] == null
            ? []
            : List<HealthTopicCategory>.from(json["healthTopics"]!
                .map((x) => HealthTopicCategory.fromJson(x))),
        tagUsers: json["tagUsers"] == null
            ? []
            : List<HealthTopicCategory>.from(
                json["tagUsers"]!.map((x) => HealthTopicCategory.fromJson(x))),
        images: json["images"] == null
            ? []
            : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
        videos: json["videos"] == null
            ? []
            : List<Image>.from(json["videos"]!.map((x) => Image.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "description": description,
        "personalizedMessage": personalizedMessage,
        "startDate": startDate?.toIso8601String(),
        "endDate": endDate?.toIso8601String(),
        "location": location?.toJson(),
        "country": country,
        "state": state,
        "city": city,
        "postalCode": postalCode,
        "address": address,
        "createdAt": createdAt?.toIso8601String(),
        "isMyEvent": isMyEvent,
        "iAmInterested": iAmInterested,
        "healthTopicCategory": healthTopicCategory?.toJson(),
        "healthTopics": healthTopics == null
            ? []
            : List<dynamic>.from(healthTopics!.map((x) => x.toJson())),
        "tagUsers": tagUsers == null
            ? []
            : List<dynamic>.from(tagUsers!.map((x) => x.toJson())),
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "videos": videos == null
            ? []
            : List<dynamic>.from(videos!.map((x) => x.toJson())),
      };
}

class HealthTopicCategory {
  final String? id;
  final String? name;
  final String? svgCode;

  HealthTopicCategory({
    this.id,
    this.svgCode,
    this.name,
  });

  factory HealthTopicCategory.fromJson(Map<String, dynamic> json) =>
      HealthTopicCategory(
        id: json["_id"],
        svgCode: json["svgCode"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "svgCode": svgCode,
        "name": name,
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

class Location {
  final String? type;
  final List<double>? coordinates;

  Location({
    this.type,
    this.coordinates,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        type: json["type"],
        coordinates: json["coordinates"] == null
            ? []
            : List<double>.from(json["coordinates"]!.map((x) => x?.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "coordinates": coordinates == null
            ? []
            : List<dynamic>.from(coordinates!.map((x) => x)),
      };
}
