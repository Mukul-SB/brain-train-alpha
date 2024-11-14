// To parse this JSON data, do
//
//     final getStaticDataResponseModel = getStaticDataResponseModelFromJson(jsonString);

import 'dart:convert';

GetStaticDataResponseModel getStaticDataResponseModelFromJson(String str) =>
    GetStaticDataResponseModel.fromJson(json.decode(str));

String getStaticDataResponseModelToJson(GetStaticDataResponseModel data) =>
    json.encode(data.toJson());

class GetStaticDataResponseModel {
  final List<JoiningCause>? joiningCauses;
  final List<UserExpertise>? userExpertise;
  final List<HealthCategoriesWithTopic>? healthCategoriesWithTopics;
  final List<LikeType>? likeTypes;
  final List<ReportPostReason>? reportPostReasons;

  GetStaticDataResponseModel({
    this.joiningCauses,
    this.userExpertise,
    this.healthCategoriesWithTopics,
    this.likeTypes,
    this.reportPostReasons,
  });

  factory GetStaticDataResponseModel.fromJson(Map<String, dynamic> json) =>
      GetStaticDataResponseModel(
        joiningCauses: json["joiningCauses"] == null
            ? []
            : List<JoiningCause>.from(
                json["joiningCauses"]!.map((x) => JoiningCause.fromJson(x))),
        userExpertise: json["userExpertise"] == null
            ? []
            : List<UserExpertise>.from(
                json["userExpertise"]!.map((x) => UserExpertise.fromJson(x))),
        healthCategoriesWithTopics: json["healthCategoriesWithTopics"] == null
            ? []
            : List<HealthCategoriesWithTopic>.from(
                json["healthCategoriesWithTopics"]!
                    .map((x) => HealthCategoriesWithTopic.fromJson(x))),
        likeTypes: json["likeTypes"] == null
            ? []
            : List<LikeType>.from(
                json["likeTypes"]!.map((x) => LikeType.fromJson(x))),
        reportPostReasons: json["reportPostReasons"] == null
            ? []
            : List<ReportPostReason>.from(json["reportPostReasons"]!
                .map((x) => ReportPostReason.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "joiningCauses": joiningCauses == null
            ? []
            : List<dynamic>.from(joiningCauses!.map((x) => x.toJson())),
        "userExpertise": userExpertise == null
            ? []
            : List<dynamic>.from(userExpertise!.map((x) => x.toJson())),
        "healthCategoriesWithTopics": healthCategoriesWithTopics == null
            ? []
            : List<dynamic>.from(
                healthCategoriesWithTopics!.map((x) => x.toJson())),
        "likeTypes": likeTypes == null
            ? []
            : List<dynamic>.from(likeTypes!.map((x) => x.toJson())),
        "reportPostReasons": reportPostReasons == null
            ? []
            : List<dynamic>.from(reportPostReasons!.map((x) => x.toJson())),
      };
}

class HealthCategoriesWithTopic {
  final String? id;
  final String? name;
  final String? type;
  final String? svgCode;
  final List<UserExpertise>? healthTopics;

  HealthCategoriesWithTopic({
    this.id,
    this.name,
    this.type,
    this.svgCode,
    this.healthTopics,
  });

  factory HealthCategoriesWithTopic.fromJson(Map<String, dynamic> json) =>
      HealthCategoriesWithTopic(
        id: json["_id"],
        name: json["name"],
        type: json["type"],
        svgCode: json["svgCode"],
        healthTopics: json["healthTopics"] == null
            ? []
            : List<UserExpertise>.from(
                json["healthTopics"]!.map((x) => UserExpertise.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "type": type,
        "svgCode": svgCode,
        "healthTopics": healthTopics == null
            ? []
            : List<dynamic>.from(healthTopics!.map((x) => x.toJson())),
      };
}

class UserExpertise {
  final String? id;
  final String? name;

  UserExpertise({
    this.id,
    this.name,
  });

  factory UserExpertise.fromJson(Map<String, dynamic> json) => UserExpertise(
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

class LikeType {
  final String? id;
  final String? svgCode;
  final String? name;

  LikeType({
    this.id,
    this.svgCode,
    this.name,
  });

  factory LikeType.fromJson(Map<String, dynamic> json) => LikeType(
        id: json["_id"],
        svgCode: json["svgCode"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "svgCode": svgCode,
        "name": name,
      };
}

class ReportPostReason {
  final String? id;
  final String? reason;
  final String? type;

  ReportPostReason({
    this.id,
    this.reason,
    this.type,
  });

  factory ReportPostReason.fromJson(Map<String, dynamic> json) =>
      ReportPostReason(
        id: json["_id"],
        reason: json["reason"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "reason": reason,
        "type": type,
      };
}
