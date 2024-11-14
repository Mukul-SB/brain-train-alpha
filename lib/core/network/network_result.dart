import 'dart:convert';

import 'package:brain_train_alpha/core/utils/extension.dart';

import '../utils/app_utils.dart';
import '../utils/enum.dart';
import 'base_response_model_entity.dart';

class NetworkResult {
  NetworkResultType networkResultType;
  String? result;

  NetworkResult._(this.networkResultType, this.result);

  static NetworkResult noInternet() {
    return NetworkResult._(NetworkResultType.noInternet, null);
  }

  static NetworkResult success(String data) {
    return NetworkResult._(NetworkResultType.success, data);
  }

  static NetworkResult error(String data) {
    var baseJson = json.decode(data);
    BaseResponseModel baseResponse = BaseResponseModel.fromJson(baseJson);
    if (baseResponse.developerMessage!.isNotNullOrEmpty()) {
      AppUtils.showSnackBar(message: baseResponse.developerMessage!);
    }

    return NetworkResult._(NetworkResultType.error, data);
  }

  static NetworkResult cacheError() {
    return NetworkResult._(NetworkResultType.cacheError, null);
  }

  static NetworkResult timeout() {
    return NetworkResult._(NetworkResultType.timeOut, null);
  }

  static NetworkResult unAuthorised() {
    return NetworkResult._(NetworkResultType.unauthorised, null);
  }

  static NetworkResult notFound() {
    return NetworkResult._(NetworkResultType.notFound, null);
  }

  @override
  String toString() {
    return 'NetworkResult{networkResultType: $networkResultType, data: $result}';
  }
}
