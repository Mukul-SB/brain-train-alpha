import 'dart:convert';

String joiningCauseResponseModelToJson(JoiningCauseResponseModel data) =>
    json.encode(data.toJson());

class JoiningCauseResponseModel {
  final String? id;
  final String? joiningCause;

  JoiningCauseResponseModel({
    this.id,
    this.joiningCause,
  });

  factory JoiningCauseResponseModel.fromJson(Map<String, dynamic> json) =>
      JoiningCauseResponseModel(
        id: json["_id"],
        joiningCause: json["joiningCause"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "joiningCause": joiningCause,
      };
}
