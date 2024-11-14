// To parse this JSON data, do
//
//     final updateOnboardingResponseModel = updateOnboardingResponseModelFromJson(jsonString);

import 'dart:convert';

UpdateOnboardingResponseModel updateOnboardingResponseModelFromJson(
        String str) =>
    UpdateOnboardingResponseModel.fromJson(json.decode(str));

String updateOnboardingResponseModelToJson(
        UpdateOnboardingResponseModel data) =>
    json.encode(data.toJson());

class UpdateOnboardingResponseModel {
  final String? userId;
  final String? name;
  final JoiningCause? joiningCause;
  List<Expertise>? healthTopics;
  final dynamic myStory;
  final List<Expertise>? expertises;
  final PractitionerProfile? practitionerProfile;
  final PractitionerSocialUrls? practitionerSocialUrls;
  final List<PractitionerService>? practitionerServices;
  final bool? isOnboardingCompleted;

  UpdateOnboardingResponseModel({
    this.userId,
    this.name,
    this.joiningCause,
    this.healthTopics,
    this.myStory,
    this.expertises,
    this.practitionerProfile,
    this.practitionerSocialUrls,
    this.practitionerServices,
    this.isOnboardingCompleted,
  });

  factory UpdateOnboardingResponseModel.fromJson(Map<String, dynamic> json) =>
      UpdateOnboardingResponseModel(
        userId: json["userId"],
        name: json["name"],
        joiningCause: json["joiningCause"] == null
            ? null
            : JoiningCause.fromJson(json["joiningCause"]),
        healthTopics: json["healthTopics"] == null
            ? []
            : List<Expertise>.from(
                json["healthTopics"]!.map((x) => Expertise.fromJson(x))),
        myStory: json["myStory"],
        expertises: json["expertises"] == null
            ? []
            : List<Expertise>.from(
                json["expertises"]!.map((x) => Expertise.fromJson(x))),
        practitionerProfile: json["practitionerProfile"] == null
            ? null
            : PractitionerProfile.fromJson(json["practitionerProfile"]),
        practitionerSocialUrls: json["practitionerSocialURLS"] == null
            ? null
            : PractitionerSocialUrls.fromJson(json["practitionerSocialURLS"]),
        practitionerServices: json["practitionerServices"] == null
            ? []
            : List<PractitionerService>.from(json["practitionerServices"]!
                .map((x) => PractitionerService.fromJson(x))),
        isOnboardingCompleted: json["isOnboardingCompleted"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "name": name,
        "joiningCause": joiningCause?.toJson(),
        "healthTopics": healthTopics == null
            ? []
            : List<dynamic>.from(healthTopics!.map((x) => x.toJson())),
        "myStory": myStory,
        "expertises": expertises == null
            ? []
            : List<dynamic>.from(expertises!.map((x) => x.toJson())),
        "practitionerProfile": practitionerProfile?.toJson(),
        "practitionerSocialURLS": practitionerSocialUrls?.toJson(),
        "practitionerServices": practitionerServices == null
            ? []
            : List<dynamic>.from(practitionerServices!.map((x) => x.toJson())),
        "isOnboardingCompleted": isOnboardingCompleted,
      };
}

class Expertise {
  final String? id;
  final String? name;

  Expertise({
    this.id,
    this.name,
  });

  factory Expertise.fromJson(Map<String, dynamic> json) => Expertise(
        id: json["_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
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

class PractitionerProfile {
  final String? businessName;
  final String? contactNumber;
  final String? address;
  final String? aboutYourself;
  final List<String>? tags;
  final List<Image>? images;
  final List<Image>? videos;

  PractitionerProfile({
    this.businessName,
    this.contactNumber,
    this.address,
    this.aboutYourself,
    this.tags,
    this.images,
    this.videos,
  });

  factory PractitionerProfile.fromJson(Map<String, dynamic> json) =>
      PractitionerProfile(
        businessName: json["businessName"],
        contactNumber: json["contactNumber"],
        address: json["address"],
        aboutYourself: json["aboutYourself"],
        tags: json["tags"] == null
            ? []
            : List<String>.from(json["tags"]!.map((x) => x)),
        images: json["images"] == null
            ? []
            : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
        videos: json["videos"] == null
            ? []
            : List<Image>.from(json["videos"]!.map((x) => Image.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "businessName": businessName,
        "contactNumber": contactNumber,
        "address": address,
        "aboutYourself": aboutYourself,
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
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

class PractitionerService {
  final String? title;
  final String? aboutYourService;
  final String? healthTopicCategoryId;
  final List<String>? healthTopicIds;
  final String? userId;

  PractitionerService({
    this.title,
    this.aboutYourService,
    this.healthTopicCategoryId,
    this.healthTopicIds,
    this.userId,
  });

  factory PractitionerService.fromJson(Map<String, dynamic> json) =>
      PractitionerService(
        title: json["title"],
        aboutYourService: json["aboutYourService"],
        healthTopicCategoryId: json["healthTopicCategoryId"],
        healthTopicIds: json["healthTopicIds"] == null
            ? []
            : List<String>.from(json["healthTopicIds"]!.map((x) => x)),
        userId: json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "aboutYourService": aboutYourService,
        "healthTopicCategoryId": healthTopicCategoryId,
        "healthTopicIds": healthTopicIds == null
            ? []
            : List<dynamic>.from(healthTopicIds!.map((x) => x)),
        "userId": userId,
      };
}

class PractitionerSocialUrls {
  final String? yourUrl;
  final String? facebookUrl;
  final String? linkedInUrl;
  final String? instagramUrl;
  final String? youtubeUrl;
  final String? xUrl;

  PractitionerSocialUrls({
    this.yourUrl,
    this.facebookUrl,
    this.linkedInUrl,
    this.instagramUrl,
    this.youtubeUrl,
    this.xUrl,
  });

  factory PractitionerSocialUrls.fromJson(Map<String, dynamic> json) =>
      PractitionerSocialUrls(
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
