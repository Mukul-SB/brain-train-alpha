// To parse this JSON data, do
//
//     final getEventsListResponseModel = getEventsListResponseModelFromJson(jsonString);

import 'dart:convert';

GetEventsListResponseModel getEventsListResponseModelFromJson(String str) =>
    GetEventsListResponseModel.fromJson(json.decode(str));

String getEventsListResponseModelToJson(GetEventsListResponseModel data) =>
    json.encode(data.toJson());

class GetEventsListResponseModel {
  final int? page;
  final int? limit;
  final int? totalResults;
  final int? totalPages;
  final List<EventResultResponse>? results;

  GetEventsListResponseModel({
    this.page,
    this.limit,
    this.totalResults,
    this.totalPages,
    this.results,
  });

  factory GetEventsListResponseModel.fromJson(Map<String, dynamic> json) =>
      GetEventsListResponseModel(
        page: json["page"],
        limit: json["limit"],
        totalResults: json["totalResults"],
        totalPages: json["totalPages"],
        results: json["results"] == null
            ? []
            : List<EventResultResponse>.from(
                json["results"]!.map((x) => EventResultResponse.fromJson(x))),
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

class EventResultResponse {
  final String? id;
  final String? title;
  final DateTime? startDate;
  final DateTime? endDate;
  final Location? location;
  final String? country;
  final String? state;
  final String? city;
  bool iAmInterested;
  final bool? isMyEvent;
  final String? postalCode;
  final String? address;
  int userInterested;
  final Media? media;

  EventResultResponse({
    this.id,
    this.iAmInterested = false,
    this.isMyEvent,
    this.title,
    this.startDate,
    this.endDate,
    this.location,
    this.country,
    this.state,
    this.city,
    this.postalCode,
    this.address,
    this.userInterested = 0,
    this.media,
  });

  factory EventResultResponse.fromJson(Map<String, dynamic> json) =>
      EventResultResponse(
        id: json["_id"],
        title: json["title"],
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
        iAmInterested: json["iAmInterested"] ?? false,
        isMyEvent: json["isMyEvent"],
        city: json["city"],
        postalCode: json["postalCode"],
        address: json["address"],
        userInterested: json["userInterested"] ?? 0,
        media: json["media"] == null ? null : Media.fromJson(json["media"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "startDate": startDate?.toIso8601String(),
        "endDate": endDate?.toIso8601String(),
        "location": location?.toJson(),
        "country": country,
        "state": state,
        "city": city,
        "postalCode": postalCode,
        "iAmInterested": iAmInterested,
        "isMyEvent": isMyEvent,
        "address": address,
        "userInterested": userInterested,
        "media": media?.toJson(),
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

class Media {
  final String? fileUrl;
  final String? fileType;

  Media({
    this.fileUrl,
    this.fileType,
  });

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        fileUrl: json["fileUrl"],
        fileType: json["fileType"],
      );

  Map<String, dynamic> toJson() => {
        "fileUrl": fileUrl,
        "fileType": fileType,
      };
}
