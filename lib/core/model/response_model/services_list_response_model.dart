// To parse this JSON data, do
//
//     final servicesListResponseModel = servicesListResponseModelFromJson(jsonString);

import 'dart:convert';

ServicesListResponseModel servicesListResponseModelFromJson(String str) =>
    ServicesListResponseModel.fromJson(json.decode(str));

String servicesListResponseModelToJson(ServicesListResponseModel data) =>
    json.encode(data.toJson());

class ServicesListResponseModel {
  final int? page;
  final int? limit;
  final List<ServiceListResult>? results;
  final int? totalResults;
  final int? totalPages;

  ServicesListResponseModel({
    this.page,
    this.limit,
    this.results,
    this.totalResults,
    this.totalPages,
  });

  factory ServicesListResponseModel.fromJson(Map<String, dynamic> json) =>
      ServicesListResponseModel(
        page: json["page"],
        limit: json["limit"],
        results: json["results"] == null
            ? []
            : List<ServiceListResult>.from(
                json["results"]!.map((x) => ServiceListResult.fromJson(x))),
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

class ServiceListResult {
  final String? id;
  final String? title;
  final String? aboutYourService;

  ServiceListResult({
    this.id,
    this.title,
    this.aboutYourService,
  });

  factory ServiceListResult.fromJson(Map<String, dynamic> json) =>
      ServiceListResult(
        id: json["_id"],
        title: json["title"],
        aboutYourService: json["aboutYourService"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "aboutYourService": aboutYourService,
      };
}
