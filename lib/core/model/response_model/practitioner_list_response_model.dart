// To parse this JSON data, do
//
//     final practitionerListResponseModel = practitionerListResponseModelFromJson(jsonString);

import 'dart:convert';

PractitionerListResponseModel practitionerListResponseModelFromJson(
        String str) =>
    PractitionerListResponseModel.fromJson(json.decode(str));

String practitionerListResponseModelToJson(
        PractitionerListResponseModel data) =>
    json.encode(data.toJson());

class PractitionerListResponseModel {
  final int? page;
  final int? limit;
  final List<PractitionerListResult>? results;
  final int? totalResults;
  final int? totalPages;

  PractitionerListResponseModel({
    this.page,
    this.limit,
    this.results,
    this.totalResults,
    this.totalPages,
  });

  factory PractitionerListResponseModel.fromJson(Map<String, dynamic> json) =>
      PractitionerListResponseModel(
        page: json["page"],
        limit: json["limit"],
        results: json["results"] == null
            ? []
            : List<PractitionerListResult>.from(json["results"]!
                .map((x) => PractitionerListResult.fromJson(x))),
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

class PractitionerListResult {
  final String? id;
  final String? name;
  final bool? isHealthPractitioner;
  final bool? isSponsor;
  final String? city;
  final String? state;
  final String? country;
  final int? pincode;
  final String? profileImage;
  final List<ExpertiseArr>? expertiseArr;

  PractitionerListResult({
    this.id,
    this.name,
    this.isHealthPractitioner,
    this.isSponsor,
    this.city,
    this.state,
    this.country,
    this.pincode,
    this.profileImage,
    this.expertiseArr,
  });

  factory PractitionerListResult.fromJson(Map<String, dynamic> json) =>
      PractitionerListResult(
        id: json["_id"],
        name: json["name"],
        isHealthPractitioner: json["isHealthPractitioner"],
        isSponsor: json["isSponsor"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        pincode: json["pincode"],
        profileImage: json["profileImage"],
        expertiseArr: json["expertiseArr"] == null
            ? []
            : List<ExpertiseArr>.from(
                json["expertiseArr"]!.map((x) => ExpertiseArr.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "isHealthPractitioner": isHealthPractitioner,
        "isSponsor": isSponsor,
        "city": city,
        "state": state,
        "country": country,
        "pincode": pincode,
        "profileImage": profileImage,
        "expertiseArr": expertiseArr == null
            ? []
            : List<dynamic>.from(expertiseArr!.map((x) => x.toJson())),
      };
}

class ExpertiseArr {
  final String? id;
  final String? name;

  ExpertiseArr({
    this.id,
    this.name,
  });

  factory ExpertiseArr.fromJson(Map<String, dynamic> json) => ExpertiseArr(
        id: json["_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
      };
}
