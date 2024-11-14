// To parse this JSON data, do
//
//     final signInResponseModel = signInResponseModelFromJson(jsonString);

import 'dart:convert';

SignInResponseModel signInResponseModelFromJson(String str) =>
    SignInResponseModel.fromJson(json.decode(str));

String signInResponseModelToJson(SignInResponseModel data) =>
    json.encode(data.toJson());

class SignInResponseModel {
  final String? userId;
  final String? name;
  final JoiningCause? joiningCause;
  List<Expertise>? healthTopics;
  final MyStory? myStory;
  final List<Expertise>? expertises;
  final PractitionerProfile? practitionerProfile;
  final PractitionerSocialUrls? practitionerSocialUrls;
  final List<PractitionerService>? practitionerServices;
  final bool? isOnboardingCompleted;
  final bool? deletionRequested;

  SignInResponseModel({
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
    this.deletionRequested,
  });

  factory SignInResponseModel.fromJson(Map<String, dynamic> json) =>
      SignInResponseModel(
        userId: json["userId"],
        name: json["name"],
        joiningCause: json["joiningCause"] == null
            ? null
            : JoiningCause.fromJson(json["joiningCause"]),
        healthTopics: json["healthTopics"] == null
            ? []
            : List<Expertise>.from(
                json["healthTopics"]!.map((x) => Expertise.fromJson(x))),
        myStory:
            json["myStory"] == null ? null : MyStory.fromJson(json["myStory"]),
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
        deletionRequested: json["deletionRequested"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "name": name,
        "joiningCause": joiningCause?.toJson(),
        "healthTopics": healthTopics == null
            ? []
            : List<dynamic>.from(healthTopics!.map((x) => x.toJson())),
        "myStory": myStory?.toJson(),
        "expertises": expertises == null
            ? []
            : List<dynamic>.from(expertises!.map((x) => x.toJson())),
        "practitionerProfile": practitionerProfile?.toJson(),
        "practitionerSocialURLS": practitionerSocialUrls?.toJson(),
        "practitionerServices": practitionerServices == null
            ? []
            : List<dynamic>.from(practitionerServices!.map((x) => x.toJson())),
        "isOnboardingCompleted": isOnboardingCompleted,
        "deletionRequested": deletionRequested,
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
  final String? id;
  final String? userId;
  final String? aboutYourself;
  final String? address;
  final String? businessName;
  final String? tagLine;
  final String? contactNumber;
  final List<String>? tags;
  final List<Image>? images;
  final List<Image>? videos;

  PractitionerProfile({
    this.id,
    this.userId,
    this.aboutYourself,
    this.address,
    this.tagLine,
    this.businessName,
    this.contactNumber,
    this.tags,
    this.images,
    this.videos,
  });

  factory PractitionerProfile.fromJson(Map<String, dynamic> json) =>
      PractitionerProfile(
        id: json["_id"],
        userId: json["userId"],
        aboutYourself: json["aboutYourself"],
        address: json["address"],
        businessName: json["businessName"],
        tagLine: json["tagLine"],
        contactNumber: json["contactNumber"],
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
        "_id": id,
        "userId": userId,
        "aboutYourself": aboutYourself,
        "address": address,
        "businessName": businessName,
        "contactNumber": contactNumber,
        "tagLine": tagLine,
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "videos": videos == null
            ? []
            : List<dynamic>.from(videos!.map((x) => x.toJson())),
      };
}

class PractitionerService {
  final String? id;
  final String? userId;
  final String? title;
  final String? aboutYourService;
  final String? healthTopicCategoryId;
  final List<String>? healthTopicIds;

  PractitionerService({
    this.id,
    this.userId,
    this.title,
    this.aboutYourService,
    this.healthTopicCategoryId,
    this.healthTopicIds,
  });

  factory PractitionerService.fromJson(Map<String, dynamic> json) =>
      PractitionerService(
        id: json["_id"],
        userId: json["userId"],
        title: json["title"],
        aboutYourService: json["aboutYourService"],
        healthTopicCategoryId: json["healthTopicCategoryId"],
        healthTopicIds: json["healthTopicIds"] == null
            ? []
            : List<String>.from(json["healthTopicIds"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "userId": userId,
        "title": title,
        "aboutYourService": aboutYourService,
        "healthTopicCategoryId": healthTopicCategoryId,
        "healthTopicIds": healthTopicIds == null
            ? []
            : List<dynamic>.from(healthTopicIds!.map((x) => x)),
      };
}

class PractitionerSocialUrls {
  final String? id;
  final String? userId;
  final String? facebookUrl;
  final String? instagramUrl;
  final String? linkedInUrl;
  final String? xUrl;
  final String? yourUrl;
  final String? youtubeUrl;

  PractitionerSocialUrls({
    this.id,
    this.userId,
    this.facebookUrl,
    this.instagramUrl,
    this.linkedInUrl,
    this.xUrl,
    this.yourUrl,
    this.youtubeUrl,
  });

  factory PractitionerSocialUrls.fromJson(Map<String, dynamic> json) =>
      PractitionerSocialUrls(
        id: json["_id"],
        userId: json["userId"],
        facebookUrl: json["facebookURL"],
        instagramUrl: json["instagramURL"],
        linkedInUrl: json["linkedInURL"],
        xUrl: json["xURL"],
        yourUrl: json["yourURL"],
        youtubeUrl: json["youtubeURL"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "userId": userId,
        "facebookURL": facebookUrl,
        "instagramURL": instagramUrl,
        "linkedInURL": linkedInUrl,
        "xURL": xUrl,
        "yourURL": yourUrl,
        "youtubeURL": youtubeUrl,
      };
}

class MyStory {
  final String? id;
  final String? userId;
  final DateTime? createdAt;
  final String? description;
  final String? healthTopicCategoryId;
  final List<String>? healthTopicIds;
  final List<String>? tagUserIds;
  final String? title;
  final String? type;
  final DateTime? updatedAt;
  final String? myStoryId;
  final List<Image>? images;
  final List<Image>? videos;

  MyStory({
    this.id,
    this.userId,
    this.createdAt,
    this.description,
    this.healthTopicCategoryId,
    this.healthTopicIds,
    this.tagUserIds,
    this.title,
    this.type,
    this.updatedAt,
    this.myStoryId,
    this.images,
    this.videos,
  });

  factory MyStory.fromJson(Map<String, dynamic> json) => MyStory(
        id: json["_id"],
        userId: json["userId"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        description: json["description"],
        healthTopicCategoryId: json["healthTopicCategoryId"],
        healthTopicIds: json["healthTopicIds"] == null
            ? []
            : List<String>.from(json["healthTopicIds"]!.map((x) => x)),
        tagUserIds: json["tagUserIds"] == null
            ? []
            : List<String>.from(json["tagUserIds"]!.map((x) => x)),
        title: json["title"],
        type: json["type"],
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        myStoryId: json["id"],
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
        "createdAt": createdAt?.toIso8601String(),
        "description": description,
        "healthTopicCategoryId": healthTopicCategoryId,
        "healthTopicIds": healthTopicIds == null
            ? []
            : List<dynamic>.from(healthTopicIds!.map((x) => x)),
        "tagUserIds": tagUserIds == null
            ? []
            : List<dynamic>.from(tagUserIds!.map((x) => x)),
        "title": title,
        "type": type,
        "updatedAt": updatedAt?.toIso8601String(),
        "id": myStoryId,
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
