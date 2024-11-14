// To parse this JSON data, do
//
//     final likeTypeResponseModel = likeTypeResponseModelFromJson(jsonString);

import 'dart:convert';

List<MasterLikeTypeResponseModel> masterLikeTypeResponseModelFromJson(
    String str) {
  return List<MasterLikeTypeResponseModel>.from(
      json.decode(str).map((x) => MasterLikeTypeResponseModel.fromJson(x)));
}

String masterLikeTypeResponseModelToJson(
        List<MasterLikeTypeResponseModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MasterLikeTypeResponseModel {
  final String? id;
  final String? svgCode;
  final String? name;

  MasterLikeTypeResponseModel({
    this.id,
    this.svgCode,
    this.name,
  });

  factory MasterLikeTypeResponseModel.fromJson(Map<String, dynamic> json) =>
      MasterLikeTypeResponseModel(
        id: json["_id"],
        svgCode: json["svgCode"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "svgCode": svgCode,
        "name": name,
      };

  @override
  String toString() {
    return 'MasterLikeTypeResponseModel{id: $id, svgCode: $svgCode, name: $name}';
  }
}
