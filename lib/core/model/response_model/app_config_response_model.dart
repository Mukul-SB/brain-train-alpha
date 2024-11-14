// To parse this JSON data, do
//
//     final appConfigResponseModel = appConfigResponseModelFromJson(jsonString);

import 'dart:convert';

AppConfigResponseModel appConfigResponseModelFromJson(String str) =>
    AppConfigResponseModel.fromJson(json.decode(str));

String appConfigResponseModelToJson(AppConfigResponseModel data) =>
    json.encode(data.toJson());

class AppConfigResponseModel {
  final AppConfig? appConfig;

  AppConfigResponseModel({
    this.appConfig,
  });

  factory AppConfigResponseModel.fromJson(Map<String, dynamic> json) =>
      AppConfigResponseModel(
        appConfig: json["appConfig"] == null
            ? null
            : AppConfig.fromJson(json["appConfig"]),
      );

  Map<String, dynamic> toJson() => {
        "appConfig": appConfig?.toJson(),
      };
}

class AppConfig {
  final bool? mandatory;
  final bool? updateRequired;
  final String? positiveButtonText;
  final String? negativeButtonText;
  final String? updateMessage;
  final String? appUrl;

  AppConfig({
    this.mandatory,
    this.updateRequired,
    this.positiveButtonText,
    this.negativeButtonText,
    this.updateMessage,
    this.appUrl,
  });

  factory AppConfig.fromJson(Map<String, dynamic> json) => AppConfig(
        mandatory: json["mandatory"],
        updateRequired: json["updateRequired"],
        positiveButtonText: json["positiveButtonText"],
        negativeButtonText: json["negativeButtonText"],
        updateMessage: json["updateMessage"],
        appUrl: json["appUrl"],
      );

  Map<String, dynamic> toJson() => {
        "mandatory": mandatory,
        "updateRequired": updateRequired,
        "positiveButtonText": positiveButtonText,
        "negativeButtonText": negativeButtonText,
        "updateMessage": updateMessage,
        "appUrl": appUrl,
      };
}
