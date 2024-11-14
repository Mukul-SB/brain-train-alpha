// To parse this JSON data, do
//
//     final businessInfoResponseModel = businessInfoResponseModelFromJson(jsonString);

import 'dart:convert';

BusinessInfoResponseModel businessInfoResponseModelFromJson(String str) =>
    BusinessInfoResponseModel.fromJson(json.decode(str));

String businessInfoResponseModelToJson(BusinessInfoResponseModel data) =>
    json.encode(data.toJson());

class BusinessInfoResponseModel {
  final String? id;
  final String? userId;
  final String? aboutYourself;
  final String? address;
  final String? businessName;
  final String? contactNumber;
  final String? facebookUrl;
  final String? instagramUrl;
  final String? linkedInUrl;
  final List<String>? tags;
  final String? xUrl;
  final String? yourUrl;
  final String? youtubeUrl;
  final String? tagLine;
  final List<Image>? images;
  final List<Image>? videos;

  BusinessInfoResponseModel({
    this.id,
    this.userId,
    this.aboutYourself,
    this.address,
    this.businessName,
    this.contactNumber,
    this.facebookUrl,
    this.instagramUrl,
    this.linkedInUrl,
    this.tags,
    this.xUrl,
    this.yourUrl,
    this.youtubeUrl,
    this.tagLine,
    this.images,
    this.videos,
  });

  factory BusinessInfoResponseModel.fromJson(Map<String, dynamic> json) =>
      BusinessInfoResponseModel(
        id: json["_id"],
        userId: json["userId"],
        aboutYourself: json["aboutYourself"],
        address: json["address"],
        businessName: json["businessName"],
        contactNumber: json["contactNumber"],
        facebookUrl: json["facebookURL"],
        instagramUrl: json["instagramURL"],
        linkedInUrl: json["linkedInURL"],
        tags: json["tags"] == null
            ? []
            : List<String>.from(json["tags"]!.map((x) => x)),
        xUrl: json["xURL"],
        yourUrl: json["yourURL"],
        youtubeUrl: json["youtubeURL"],
        tagLine: json["tagLine"],
        images: json["images"] == null
            ? []
            : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
        videos: json["videos"] == null
            ? []
            : List<Image>.from(json["videos"]!.map((x) => Image.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "userId": userId,
        "aboutYourself": aboutYourself,
        "address": address,
        "businessName": businessName,
        "contactNumber": contactNumber,
        "facebookURL": facebookUrl,
        "instagramURL": instagramUrl,
        "linkedInURL": linkedInUrl,
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "xURL": xUrl,
        "yourURL": yourUrl,
        "youtubeURL": youtubeUrl,
        "tagLine": tagLine,
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "videos": videos == null
            ? []
            : List<dynamic>.from(videos!.map((x) => x.toJson())),
      };
}

class Image {
  final String? fileUrl;
  final int? order;

  Image({
    this.fileUrl,
    this.order,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        fileUrl: json["fileURL"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "fileURL": fileUrl,
        "order": order,
      };
}
