// To parse this JSON data, do
//
//     final updateOnboardingRequestModel = updateOnboardingRequestModelFromJson(jsonString);

import 'dart:convert';

UpdateOnboardingRequestModel updateOnboardingRequestModelFromJson(String str) =>
    UpdateOnboardingRequestModel.fromJson(json.decode(str));

String updateOnboardingRequestModelToJson(UpdateOnboardingRequestModel data) =>
    json.encode(data.toJson());

class UpdateOnboardingRequestModel {
  String? joiningCauseId;
  List<String>? healthTopicIds;
  List<String>? expertiseIds;
  MyStory? myStory;
  PractitionerProfileRequestModel? practitionerProfile;
  PractitionerSocialUrlsRequestModel? practitionerSocialUrls;
  List<PractitionerServiceResponseModel?>? practitionerServices;

  UpdateOnboardingRequestModel({
    this.joiningCauseId,
    this.healthTopicIds,
    this.expertiseIds,
    this.myStory,
    this.practitionerProfile,
    this.practitionerSocialUrls,
    this.practitionerServices,
  });

  factory UpdateOnboardingRequestModel.fromJson(Map<String, dynamic> json) =>
      UpdateOnboardingRequestModel(
        joiningCauseId: json["joiningCauseId"],
        healthTopicIds: json["healthTopicIds"] == null
            ? []
            : List<String>.from(json["healthTopicIds"]!.map((x) => x)),
        expertiseIds: json["expertiseIds"] == null
            ? []
            : List<String>.from(json["expertiseIds"]!.map((x) => x)),
        myStory:
            json["myStory"] == null ? null : MyStory.fromJson(json["myStory"]),
        practitionerProfile: json["practitionerProfile"] == null
            ? null
            : PractitionerProfileRequestModel.fromJson(
                json["practitionerProfile"]),
        practitionerSocialUrls: json["practitionerSocialURLS"] == null
            ? null
            : PractitionerSocialUrlsRequestModel.fromJson(
                json["practitionerSocialURLS"]),
        practitionerServices: json["practitionerServices"] == null
            ? []
            : List<PractitionerServiceResponseModel>.from(
                json["practitionerServices"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "joiningCauseId": joiningCauseId,
        "healthTopicIds": healthTopicIds == null
            ? []
            : List<dynamic>.from(healthTopicIds!.map((x) => x)),
        "expertiseIds": expertiseIds == null
            ? []
            : List<dynamic>.from(expertiseIds!.map((x) => x)),
        "myStory": myStory?.toJson(),
        "practitionerProfile": practitionerProfile?.toJson(),
        "practitionerSocialURLS": practitionerSocialUrls?.toJson(),
        "practitionerServices": practitionerServices == null
            ? []
            : List<dynamic>.from(practitionerServices!.map((x) => x)),
      };
}

class MyStory {
  String? title;
  String? description;
  String? healthTopicCategoryId;
  List<ServerMedia>? images;
  List<ServerMedia>? videos;
  List<String>? healthTopicIds;
  List<String>? tagUserIds;
  String? type;

  MyStory({
    this.title,
    this.description,
    this.healthTopicCategoryId,
    this.images,
    this.videos,
    this.healthTopicIds,
    this.tagUserIds,
    this.type,
  });

  factory MyStory.fromJson(Map<String, dynamic> json) => MyStory(
        title: json["title"],
        description: json["description"],
        healthTopicCategoryId: json["healthTopicCategoryId"],
        images: json["images"] == null
            ? []
            : List<ServerMedia>.from(
                json["images"]!.map((x) => ServerMedia.fromJson(x))),
        videos: json["videos"] == null
            ? []
            : List<ServerMedia>.from(
                json["videos"]!.map((x) => ServerMedia.fromJson(x))),
        healthTopicIds: json["healthTopicIds"] == null
            ? []
            : List<String>.from(json["healthTopicIds"]!.map((x) => x)),
        tagUserIds: json["tagUserIds"] == null
            ? []
            : List<String>.from(json["tagUserIds"]!.map((x) => x)),
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "healthTopicCategoryId": healthTopicCategoryId,
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "videos": videos == null
            ? []
            : List<dynamic>.from(videos!.map((x) => x.toJson())),
        "healthTopicIds": healthTopicIds == null
            ? []
            : List<dynamic>.from(healthTopicIds!.map((x) => x)),
        "tagUserIds": tagUserIds == null
            ? []
            : List<dynamic>.from(tagUserIds!.map((x) => x)),
        "type": type,
      };
}

class ServerMedia {
  final String? fileName;
  final int? order;

  ServerMedia({
    this.fileName,
    this.order,
  });

  factory ServerMedia.fromJson(Map<String, dynamic> json) => ServerMedia(
        fileName: json["fileName"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "fileName": fileName,
        "order": order,
      };
}

class PractitionerProfileRequestModel {
  String? businessName;
  String? contactNumber;
  String? address;
  String? aboutYourself;
  String? tagLine;
  List<String>? tags;
  List<ServerMedia>? images;
  List<ServerMedia>? videos;

  PractitionerProfileRequestModel({
    this.businessName,
    this.contactNumber,
    this.address,
    this.tagLine,
    this.aboutYourself,
    this.tags,
    this.images,
    this.videos,
  });

  factory PractitionerProfileRequestModel.fromJson(Map<String, dynamic> json) =>
      PractitionerProfileRequestModel(
        businessName: json["businessName"],
        contactNumber: json["contactNumber"],
        address: json["address"],
        aboutYourself: json["aboutYourself"],
        tagLine: json["tagLine"],
        tags: json["tags"] == null
            ? []
            : List<String>.from(json["tags"]!.map((x) => x)),
        images: json["images"] == null
            ? []
            : List<ServerMedia>.from(json["images"]!.map((x) => x)),
        videos: json["videos"] == null
            ? []
            : List<ServerMedia>.from(json["videos"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "businessName": businessName,
        "contactNumber": contactNumber,
        "address": address,
        "tagLine": tagLine,
        "aboutYourself": aboutYourself,
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "images":
            images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        "videos":
            videos == null ? [] : List<dynamic>.from(videos!.map((x) => x)),
      };
}

class PractitionerSocialUrlsRequestModel {
  String? yourUrl;
  String? facebookUrl;
  String? linkedInUrl;
  String? instagramUrl;
  String? youtubeUrl;
  String? xUrl;

  PractitionerSocialUrlsRequestModel({
    this.yourUrl,
    this.facebookUrl,
    this.linkedInUrl,
    this.instagramUrl,
    this.youtubeUrl,
    this.xUrl,
  });

  factory PractitionerSocialUrlsRequestModel.fromJson(
          Map<String, dynamic> json) =>
      PractitionerSocialUrlsRequestModel(
        yourUrl: json["yourURL"],
        facebookUrl: json["facebookURL"],
        linkedInUrl: json["linkedInURL"],
        instagramUrl: json["instagramURL"],
        youtubeUrl: json["youtubeURL"],
        xUrl: json["xURL"],
      );

  Map<String, dynamic> toJson() => {
        "yourURL": yourUrl,
        "facebookURL": facebookUrl,
        "linkedInURL": linkedInUrl,
        "instagramURL": instagramUrl,
        "youtubeURL": youtubeUrl,
        "xURL": xUrl,
      };
}

PractitionerServiceResponseModel practitionerServiceResponseModelFromJson(
        String str) =>
    PractitionerServiceResponseModel.fromJson(json.decode(str));

String practitionerServiceResponseModelToJson(
        PractitionerServiceResponseModel data) =>
    json.encode(data.toJson());

class PractitionerServiceResponseModel {
  final String? title;
  final String? aboutYourService;
  final String? healthTopicCategoryId;
  final List<String>? healthTopicIds;

  PractitionerServiceResponseModel({
    this.title,
    this.aboutYourService,
    this.healthTopicCategoryId,
    this.healthTopicIds,
  });

  factory PractitionerServiceResponseModel.fromJson(
          Map<String, dynamic> json) =>
      PractitionerServiceResponseModel(
        title: json["title"],
        aboutYourService: json["aboutYourService"],
        healthTopicCategoryId: json["healthTopicCategoryId"],
        healthTopicIds: json["healthTopicIds"] == null
            ? []
            : List<String>.from(json["healthTopicIds"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "aboutYourService": aboutYourService,
        "healthTopicCategoryId": healthTopicCategoryId,
        "healthTopicIds": healthTopicIds == null
            ? []
            : List<dynamic>.from(healthTopicIds!.map((x) => x)),
      };
}
