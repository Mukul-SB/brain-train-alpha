// To parse this JSON data, do
//
//     final getOfferDetailsModel = getOfferDetailsModelFromJson(jsonString);

import 'dart:convert';

GetOfferDetailsModel getOfferDetailsModelFromJson(String str) =>
    GetOfferDetailsModel.fromJson(json.decode(str));

String getOfferDetailsModelToJson(GetOfferDetailsModel data) =>
    json.encode(data.toJson());

class GetOfferDetailsModel {
  final String? id;
  final String? title;
  final String? description;
  final String? benefitsOfSponsee;
  final String? offerType;
  final String? promotionType;
  final String? productToBePromoted;
  final DateTime? startDate;
  final DateTime? endDate;
  final Location? location;
  final String? country;
  final String? state;
  final String? city;
  final String? postalCode;
  final String? address;
  final bool? isActive;
  final DateTime? createdAt;
  String? requestStatus;
  final OwnerDetails? ownerDetails;
  final bool? isMyOffer;
  final List<Image>? images;
  final HealthTopicCategory? healthTopicCategory;
  final List<HealthTopicCategory>? healthTopics;
  final List<HealthTopicCategory>? productCategorys;

  GetOfferDetailsModel({
    this.id,
    this.title,
    this.description,
    this.benefitsOfSponsee,
    this.offerType,
    this.promotionType,
    this.productToBePromoted,
    this.startDate,
    this.endDate,
    this.location,
    this.country,
    this.state,
    this.city,
    this.postalCode,
    this.address,
    this.isActive,
    this.createdAt,
    this.requestStatus,
    this.ownerDetails,
    this.isMyOffer,
    this.images,
    this.healthTopicCategory,
    this.healthTopics,
    this.productCategorys,
  });

  factory GetOfferDetailsModel.fromJson(Map<String, dynamic> json) =>
      GetOfferDetailsModel(
        id: json["_id"],
        title: json["title"],
        description: json["description"],
        benefitsOfSponsee: json["benefitsOfSponsee"],
        offerType: json["offerType"],
        promotionType: json["promotionType"],
        productToBePromoted: json["productToBePromoted"],
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
        isActive: json["isActive"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        requestStatus: json["requestStatus"],
        ownerDetails: json["ownerDetails"] == null
            ? null
            : OwnerDetails.fromJson(json["ownerDetails"]),
        isMyOffer: json["isMyOffer"],
        images: json["images"] == null
            ? []
            : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
        healthTopicCategory: json["healthTopicCategory"] == null
            ? null
            : HealthTopicCategory.fromJson(json["healthTopicCategory"]),
        healthTopics: json["healthTopics"] == null
            ? []
            : List<HealthTopicCategory>.from(json["healthTopics"]!
                .map((x) => HealthTopicCategory.fromJson(x))),
        productCategorys: json["productCategorys"] == null
            ? []
            : List<HealthTopicCategory>.from(json["productCategorys"]!
                .map((x) => HealthTopicCategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "description": description,
        "benefitsOfSponsee": benefitsOfSponsee,
        "offerType": offerType,
        "promotionType": promotionType,
        "productToBePromoted": productToBePromoted,
        "startDate": startDate?.toIso8601String(),
        "endDate": endDate?.toIso8601String(),
        "location": location?.toJson(),
        "country": country,
        "state": state,
        "city": city,
        "postalCode": postalCode,
        "address": address,
        "isActive": isActive,
        "createdAt": createdAt?.toIso8601String(),
        "requestStatus": requestStatus,
        "ownerDetails": ownerDetails?.toJson(),
        "isMyOffer": isMyOffer,
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "healthTopicCategory": healthTopicCategory?.toJson(),
        "healthTopics": healthTopics == null
            ? []
            : List<dynamic>.from(healthTopics!.map((x) => x.toJson())),
        "productCategorys": productCategorys == null
            ? []
            : List<dynamic>.from(productCategorys!.map((x) => x.toJson())),
      };
}

class HealthTopicCategory {
  final String? id;
  final String? name;

  HealthTopicCategory({
    this.id,
    this.name,
  });

  factory HealthTopicCategory.fromJson(Map<String, dynamic> json) =>
      HealthTopicCategory(
        id: json["_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
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

class OwnerDetails {
  final String? id;
  final String? name;
  final String? city;
  final String? state;
  final String? country;
  final int? pincode;
  final List<HealthTopicCategory>? expertiseIds;
  final bool? isHealthPractitioner;
  final bool? isSponsor;
  final JoiningCause? joiningCause;
  final String? profileImage;

  OwnerDetails({
    this.id,
    this.name,
    this.city,
    this.state,
    this.country,
    this.pincode,
    this.expertiseIds,
    this.isHealthPractitioner,
    this.isSponsor,
    this.joiningCause,
    this.profileImage,
  });

  factory OwnerDetails.fromJson(Map<String, dynamic> json) => OwnerDetails(
        id: json["_id"],
        name: json["name"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        pincode: json["pincode"],
        expertiseIds: json["expertiseIds"] == null
            ? []
            : List<HealthTopicCategory>.from(json["expertiseIds"]!
                .map((x) => HealthTopicCategory.fromJson(x))),
        isHealthPractitioner: json["isHealthPractitioner"],
        isSponsor: json["isSponsor"],
        joiningCause: json["joiningCause"] == null
            ? null
            : JoiningCause.fromJson(json["joiningCause"]),
        profileImage: json["profileImage"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "city": city,
        "state": state,
        "country": country,
        "pincode": pincode,
        "expertiseIds": expertiseIds == null
            ? []
            : List<dynamic>.from(expertiseIds!.map((x) => x.toJson())),
        "isHealthPractitioner": isHealthPractitioner,
        "isSponsor": isSponsor,
        "joiningCause": joiningCause?.toJson(),
        "profileImage": profileImage,
      };
}

class JoiningCause {
  final String? id;
  final String? joiningCause;

  JoiningCause({
    this.id,
    this.joiningCause,
  });

  factory JoiningCause.fromJson(Map<String, dynamic> json) => JoiningCause(
        id: json["_id"],
        joiningCause: json["joiningCause"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "joiningCause": joiningCause,
      };
}
