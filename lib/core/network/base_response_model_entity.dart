class BaseResponseModel {
  BaseResponseModel({
    required this.statusCode,
    required this.success,
    required this.message,
    required this.messageCode,
    required this.developerMessage,
    this.data,
  });

  int? statusCode;
  bool? success;
  String? message;
  String? messageCode;
  String? developerMessage;
  dynamic data;

  BaseResponseModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    success = json['success'];
    message = json['message'];
    messageCode = json['messageCode'];
    developerMessage = json['developerMessage'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    data['success'] = success;
    data['messageCode'] = messageCode;
    data['message'] = message;
    data['data'] = this.data;
    return data;
  }
}
