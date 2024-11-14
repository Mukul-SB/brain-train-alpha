// To parse this JSON data, do
//
//     final getYoloProductCategoryResponseModel = getYoloProductCategoryResponseModelFromJson(jsonString);

import 'dart:convert';

List<GetYoloProductCategoryResponseModel>
    getYoloProductCategoryResponseModelFromJson(String str) =>
        List<GetYoloProductCategoryResponseModel>.from(json
            .decode(str)
            .map((x) => GetYoloProductCategoryResponseModel.fromJson(x)));

String getYoloProductCategoryResponseModelToJson(
        List<GetYoloProductCategoryResponseModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetYoloProductCategoryResponseModel {
  final String? id;
  final String? name;

  GetYoloProductCategoryResponseModel({
    this.id,
    this.name,
  });

  factory GetYoloProductCategoryResponseModel.fromJson(
          Map<String, dynamic> json) =>
      GetYoloProductCategoryResponseModel(
        id: json["_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
      };
}
