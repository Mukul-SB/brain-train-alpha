// To parse this JSON data, do
//
//     final getNotificationsResponseModel = getNotificationsResponseModelFromJson(jsonString);

import 'dart:convert';

GetNotificationsResponseModel getNotificationsResponseModelFromJson(
        String str) =>
    GetNotificationsResponseModel.fromJson(json.decode(str));

String getNotificationsResponseModelToJson(
        GetNotificationsResponseModel data) =>
    json.encode(data.toJson());

class GetNotificationsResponseModel {
  final String? page;
  final String? limit;
  final int? totalResults;
  final int? totalPages;
  final List<Result>? results;

  GetNotificationsResponseModel({
    this.page,
    this.limit,
    this.totalResults,
    this.totalPages,
    this.results,
  });

  factory GetNotificationsResponseModel.fromJson(Map<String, dynamic> json) =>
      GetNotificationsResponseModel(
        page: json["page"],
        limit: json["limit"],
        totalResults: json["totalResults"],
        totalPages: json["totalPages"],
        results: json["results"] == null
            ? []
            : List<Result>.from(
                json["results"]!.map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "limit": limit,
        "totalResults": totalResults,
        "totalPages": totalPages,
        "results": results == null
            ? []
            : List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class Result {
  final String? id;
  final String? title;
  final String? message;
  final String? category;
  final Data? data;
  final String? status;
  final bool? isRead;
  final DateTime? createdAt;

  Result({
    this.id,
    this.title,
    this.message,
    this.category,
    this.data,
    this.status,
    this.isRead,
    this.createdAt,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["_id"],
        title: json["title"],
        message: json["message"],
        category: json["category"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        status: json["status"],
        isRead: json["isRead"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "message": message,
        "category": category,
        "data": data?.toJson(),
        "status": status,
        "isRead": isRead,
        "createdAt": createdAt?.toIso8601String(),
      };
}

class Data {
  final String? id;
  final String? title;
  final String? category;
  final String? imageUrl;

  Data({
    this.id,
    this.title,
    this.category,
    this.imageUrl,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        title: json["title"],
        category: json["category"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "category": category,
        "imageUrl": imageUrl,
      };
}
