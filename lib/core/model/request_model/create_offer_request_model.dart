// To parse this JSON data, do
//
//     final createOfferRequestModel = createOfferRequestModelFromJson(jsonString);

import 'dart:convert';

CreateOfferRequestModel createOfferRequestModelFromJson(String str) =>
    CreateOfferRequestModel.fromJson(json.decode(str));

String createOfferRequestModelToJson(CreateOfferRequestModel data) =>
    json.encode(data.toJson());

class CreateOfferRequestModel {
  final String? title;
  final String? description;
  final List<Image>? images;
  final List<Image>? videos;
  final String? benefitsOfSponsee;
  final String? healthTopicCategoryId;
  final List<String>? healthTopicIds;
  final String? offerType;
  final String? promotionType;
  final List<String>? productCategoryIds;
  final String? productToBePromoted;
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

  CreateOfferRequestModel({
    this.title,
    this.description,
    this.images,
    this.videos,
    this.benefitsOfSponsee,
    this.healthTopicCategoryId,
    this.healthTopicIds,
    this.offerType,
    this.promotionType,
    this.productCategoryIds,
    this.productToBePromoted,
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

  factory CreateOfferRequestModel.fromJson(Map<String, dynamic> json) =>
      CreateOfferRequestModel(
        title: json["title"],
        description: json["description"],
        images: json["images"] == null
            ? []
            : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
        videos: json["videos"] == null
            ? []
            : List<Image>.from(json["videos"]!.map((x) => Image.fromJson(x))),
        benefitsOfSponsee: json["benefitsOfSponsee"],
        healthTopicCategoryId: json["healthTopicCategoryId"],
        healthTopicIds: json["healthTopicIds"] == null
            ? []
            : List<String>.from(json["healthTopicIds"]!.map((x) => x)),
        offerType: json["offerType"],
        promotionType: json["promotionType"],
        productCategoryIds: json["productCategoryIds"] == null
            ? []
            : List<String>.from(json["productCategoryIds"]!.map((x) => x)),
        productToBePromoted: json["productToBePromoted"],
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
        "benefitsOfSponsee": benefitsOfSponsee,
        "healthTopicCategoryId": healthTopicCategoryId,
        "healthTopicIds": healthTopicIds == null
            ? []
            : List<dynamic>.from(healthTopicIds!.map((x) => x)),
        "offerType": offerType,
        "promotionType": promotionType,
        "productCategoryIds": productCategoryIds == null
            ? []
            : List<dynamic>.from(productCategoryIds!.map((x) => x)),
        "productToBePromoted": productToBePromoted,
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
