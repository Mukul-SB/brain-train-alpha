import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as network;

import '../environment_setup/environment.dart';
import '../storage/preference_storage.dart';
import '../utils/app_utils.dart';
import '../utils/extension.dart';
import '../utils/logger_util.dart';
import 'api_log_storage.dart';
import 'network_constant.dart';
import 'network_result.dart';

class APIHelper {
  final bool _isDebug = kDebugMode;
  Map<String, String>? _headers;

  APIHelper._privateConstructor() {
    _createHeaders();
  }

  static final APIHelper _instance = APIHelper._privateConstructor();

  static APIHelper get instance => _instance;

  Future<NetworkResult> callPostApi(String path, dynamic params, bool isLoader,
      {bool noHeaderRequired = false,
      Map<String, String>? customHeaderMap}) async {
    var callingURL = "${Environment.config.apiHost}/$path";
    var parameter = json.encode(params ?? <String, dynamic>{});

    if (_isDebug) {
      timber("API URL -> $callingURL");
      timber("API Headers -> $_headers", usePrint: true);
      timber("API Parameters -> $parameter");
    }

    if (await isConnected()) {
      if (isLoader) {
        EasyLoading.show();
      }

      await AppUtils.validAuthTokenExpiry();

      if (noHeaderRequired) {
        makeHeaderNull();
      } else {
        await _createHeaders(customHeaderMap: customHeaderMap);
      }

      try {
        var resp = await network
            .post(Uri.parse(callingURL), body: parameter, headers: _headers)
            .timeout(const Duration(minutes: 1));

        EasyLoading.dismiss();

        APILogStorage.instance.addAPICall(
            apiURL: callingURL,
            header: _headers ?? {},
            responseBody: jsonDecode(resp.body),
            request: params);

        if (_isDebug) logger.d("API ~~ Response -> ${jsonDecode(resp.body)}");
        if (resp.statusCode == 200 || resp.statusCode == 201) {
          logger.w("Status = 200 || 201");

          return Future.value(NetworkResult.success(resp.body));
        } else if (resp.statusCode == 401 || resp.statusCode == 403) {
          logger.w("Status = 401 || 403");

          return Future.value(NetworkResult.unAuthorised());
        } else {
          logger.w("Status = error");

          return Future.value(NetworkResult.error(resp.body));
        }
      } on TimeoutException {
        return Future.value(NetworkResult.timeout());
      } catch (e, s) {
        EasyLoading.dismiss();
        if (_isDebug) {
          timber(e);
          timber(s);
        } else {
          // FirebaseCrashlytics.instance.recordError(e, s);
        }
        return Future.value(NetworkResult.cacheError());
      }
    } else {
      // _showNoInternetDialog(0, path, params, isLoader);
      return Future.value(NetworkResult.noInternet());
    }
  }

  Future<NetworkResult> callPatchApi(
      String path, dynamic params, bool isLoader) async {
    var callingURL = "${Environment.config.apiHost}/$path";
    var parameter = json.encode(params ?? <String, dynamic>{});

    if (_isDebug) {
      timber("API URL -> $callingURL");
      timber("API Headers -> $_headers", usePrint: true);
      timber("API Parameters -> $parameter");
    }

    if (await isConnected()) {
      if (isLoader) {
        EasyLoading.show();
      }

      await AppUtils.validAuthTokenExpiry();
      await _createHeaders();

      try {
        var resp = await network
            .patch(
              Uri.parse(callingURL),
              body: parameter,
              headers: _headers,
            )
            .timeout(const Duration(minutes: 1));

        EasyLoading.dismiss();

        APILogStorage.instance.addAPICall(
            apiURL: callingURL,
            header: _headers ?? {},
            responseBody: jsonDecode(resp.body),
            request: params);

        if (_isDebug) logger.d("API ~~ Response -> ${jsonDecode(resp.body)}");

        if (resp.statusCode == 200 || resp.statusCode == 201) {
          logger.w("Status = 200 || 201");

          return Future.value(NetworkResult.success(resp.body));
        } else if (resp.statusCode == 401 || resp.statusCode == 403) {
          logger.w("Status = 401 || 403");

          return Future.value(NetworkResult.unAuthorised());
        } else if (resp.statusCode == 408) {
          logger.w("Status = 408");
          return Future.value(NetworkResult.timeout());
        } else {
          logger.w("Status = error");

          return Future.value(NetworkResult.error(resp.body));
        }
      } on TimeoutException {
        return Future.value(NetworkResult.timeout());
      } catch (e, s) {
        EasyLoading.dismiss();
        if (_isDebug) {
          timber(e);
          timber(s);
        } else {
          // FirebaseCrashlytics.instance.recordError(e, s);
        }
        return Future.value(NetworkResult.cacheError());
      }
    } else {
      // _showNoInternetDialog(0, path, params, isLoader);
      return Future.value(NetworkResult.noInternet());
    }
  }

  Future<NetworkResult> callDeleteApi(
      String path, dynamic params, bool isLoader) async {
    var callingURL = params != null
        ? "${Environment.config.apiHost}/$path$params"
        : "${Environment.config.apiHost}/$path";
    var parameter = json.encode(params);

    if (_isDebug) {
      timber("API URL -> $callingURL");
      timber("API Headers -> $_headers", usePrint: true);
      timber("API Parameters -> $parameter");
    }

    if (await isConnected()) {
      if (isLoader) {
        EasyLoading.show();
      }

      await AppUtils.validAuthTokenExpiry();
      await _createHeaders();

      try {
        var resp = await network
            .delete(
              Uri.parse(callingURL),
              body: null,
              headers: _headers,
            )
            .timeout(const Duration(minutes: 1));

        EasyLoading.dismiss();

        APILogStorage.instance.addAPICall(
            apiURL: callingURL,
            header: _headers ?? {},
            responseBody: jsonDecode(resp.body),
            request: null);

        if (_isDebug) logger.d("API ~~ Response -> ${jsonDecode(resp.body)}");

        if (resp.statusCode == 200 || resp.statusCode == 201) {
          logger.w("Status = 200 || 201");

          return Future.value(NetworkResult.success(resp.body));
        } else if (resp.statusCode == 401 || resp.statusCode == 403) {
          logger.w("Status = 401 || 403");

          return Future.value(NetworkResult.unAuthorised());
        } else if (resp.statusCode == 408) {
          logger.w("Status = 408");
          return Future.value(NetworkResult.timeout());
        } else {
          logger.w("Status = error");

          return Future.value(NetworkResult.error(resp.body));
        }
      } on TimeoutException {
        return Future.value(NetworkResult.timeout());
      } catch (e, s) {
        EasyLoading.dismiss();
        if (_isDebug) {
          timber(e);
          timber(s);
        } else {
          // FirebaseCrashlytics.instance.recordError(e, s);
        }
        return Future.value(NetworkResult.cacheError());
      }
    } else {
      // _showNoInternetDialog(0, path, params, isLoader);
      return Future.value(NetworkResult.noInternet());
    }
  }

  Future<NetworkResult> callGetApi(
      String path, Map<String, dynamic>? params, bool isLoader) async {
    var callingURL = Uri.parse("${Environment.config.apiHost}/$path")
        .replace(queryParameters: params)
        .toString();

    //Uri? uri;
    // final newURI = Uri().replace(queryParameters: params);

    if (_isDebug) {
      timber("API URL -> $callingURL");
      timber("API Headers -> $_headers", usePrint: true);
    }

    if (await isConnected()) {
      if (isLoader) {
        EasyLoading.show();
      }

      await AppUtils.validAuthTokenExpiry();
      await _createHeaders();

      try {
        var resp = await network
            .get(Uri.parse(callingURL), headers: _headers)
            .timeout(const Duration(minutes: 1));

        if (_isDebug) timber("API Response -> ${resp.statusCode} ${resp.body}");
        EasyLoading.dismiss();

        APILogStorage.instance.addAPICall(
            apiURL: callingURL,
            header: _headers ?? {},
            request: params,
            responseBody: jsonDecode(resp.body.toString()));

        logger.w(resp.statusCode);
        if (resp.statusCode == 200) {
          return Future.value(NetworkResult.success(resp.body));
        } else if (resp.statusCode == 401 || resp.statusCode == 403) {
          return Future.value(NetworkResult.unAuthorised());
        } else {
          return Future.value(NetworkResult.error(resp.body));
        }
      } on TimeoutException {
        return Future.value(NetworkResult.timeout());
      } catch (e, s) {
        EasyLoading.dismiss();
        if (_isDebug) {
          timber(e);
          timber(s);
        } else {
          // FirebaseCrashlytics.instance.recordError(e, s);
        }
        return Future.value(NetworkResult.cacheError());
      }
    } else {
      //  _showNoInternetDialog(1, path, params, isLoader);

      return Future.value(NetworkResult.noInternet());
    }
  }

  Future<NetworkResult> callPutApi(
      String path, dynamic params, bool isLoader) async {
    var callingURL = "${Environment.config.apiHost}/$path";
    var parameter = json.encode(params);

    // logger.i(callingURL);
    //Uri? uri;
    // final newURI = Uri().replace(queryParameters: params);
    if (_isDebug) {
      timber("API URL -> $callingURL");
      timber("API Headers -> $_headers", usePrint: true);
    }

    if (await isConnected()) {
      if (isLoader) {
        EasyLoading.show();
      }
      await AppUtils.validAuthTokenExpiry();
      await _createHeaders();

      try {
        var resp = await network.put(
          Uri.parse(callingURL),
          body: parameter,
          headers: _headers,
        );
        if (_isDebug) timber("API Response -> ${resp.statusCode} ${resp.body}");
        EasyLoading.dismiss();

        APILogStorage.instance.addAPICall(
            apiURL: callingURL,
            header: _headers ?? {},
            responseBody: jsonDecode(resp.body));

        logger.w(resp.statusCode);
        if (resp.statusCode == 200) {
          if (resp.body.startsWith("Message", 2)) {
            return Future.value(NetworkResult.error(resp.body));
          } else {
            return Future.value(NetworkResult.success(resp.body));
          }
        } else if (resp.statusCode == 401 || resp.statusCode == 403) {
          return Future.value(NetworkResult.unAuthorised());
        } else {
          return Future.value(NetworkResult.error(resp.body));
        }
      } catch (e, s) {
        EasyLoading.dismiss();
        if (_isDebug) {
          timber(e);
          timber(s);
        } else {
          // FirebaseCrashlytics.instance.recordError(e, s);
        }
        return Future.value(NetworkResult.cacheError());
      }
    } else {
      //  _showNoInternetDialog(1, path, params, isLoader);

      return Future.value(NetworkResult.noInternet());
    }
  }

  Future<NetworkResult> callPostMultiPart(
      String path, dynamic params, bool isLoader, String uploadFilePath,
      {String dataPathName = "data", String imagePathName = "image"}) async {
    var callingURL = "${Environment.config.apiHost}/$path";
    /*  if (_notProperHeader())*/

    var parameter = json.encode(params);
    if (_isDebug) {
      timber("API URL -> $callingURL");
      timber("API Headers -> $_headers");
      timber("API Parameters -> $parameter");
      timber("Selected Image Path -> $uploadFilePath");
    }

    if (await isConnected()) {
      if (isLoader) {
        EasyLoading.show();
      }
      await AppUtils.validAuthTokenExpiry();
      await _createHeadersForMultipart();

      FormData formData;
      if (uploadFilePath.isNotNullOrEmpty()) {
        formData = FormData.fromMap({
          dataPathName: parameter,
          imagePathName: await MultipartFile.fromFile(uploadFilePath)
        });
      } else {
        formData = FormData.fromMap({dataPathName: parameter});
      }

      timber(formData.fields.map((e) => timber("~~~~~~~~`${e.value}")));
      timber(formData.files.map((e) => timber("~~~~~~~~`${e.value.filename}")));
      try {
        var dio = Dio();
        var responseString = await dio.post(callingURL,
            data: formData,
            options:
                Options(headers: _headers, contentType: "application/json"));

        if (_isDebug) timber("API Response -> $responseString");

        APILogStorage.instance.addAPICall(
            apiURL: callingURL,
            header: _headers ?? {},
            responseBody: jsonDecode(responseString.toString()),
            request: params);

        EasyLoading.dismiss();
        if (responseString.statusCode == 200) {
          return Future.value(
              NetworkResult.success(json.encode(responseString.data)));
        } else if (responseString.statusCode == 401 ||
            responseString.statusCode == 403) {
          return Future.value(NetworkResult.unAuthorised());
        } else {
          return Future.value(
              NetworkResult.error(json.encode(responseString.data)));
        }
      } catch (e, s) {
        EasyLoading.dismiss();
        if (_isDebug) {
          timber(e);
          timber(s);
        } else {
          // FirebaseCrashlytics.instance.recordError(e, s);
        }
        return Future.value(NetworkResult.cacheError());
      }
    } else {
      return Future.value(NetworkResult.noInternet());
    }
  }

  Future<NetworkResult> callPostMultiPartForMultipleFiles(
      String path, List<String>? uploadFilePaths, bool isLoader,
      {String imagePathName = "personalPhotos"}) async {
    var callingURL = "${Environment.config.apiHost}/$path";

    if (_isDebug) {
      timber("API URL -> $callingURL");
      timber("API Headers -> $_headers", usePrint: true);
      timber("Selected Image Path -> $uploadFilePaths");
    }

    if (await isConnected()) {
      if (isLoader) {
        EasyLoading.show();
      }
      await AppUtils.validAuthTokenExpiry();
      await _createHeadersForMultipart();

      List<MultipartFile> multiPartList = [];

      if (!uploadFilePaths.isNullOrEmpty()) {
        multiPartList = [];

        for (int i = 0; i < uploadFilePaths!.length; i++) {
          var localPath = uploadFilePaths[i];
          if (!localPath.isNullOrEmpty()) {
            var multipartFile =
                await MultipartFile.fromFile(uploadFilePaths[i]);
            multiPartList.add(multipartFile);
          }
        }
      }

      try {
        var formData = FormData.fromMap({imagePathName: multiPartList});
        var dio = Dio();
        var responseString = await dio.post(callingURL,
            data: formData,
            options:
                Options(headers: _headers, contentType: "application/json"));

        if (_isDebug) timber("API Response -> $responseString");
        EasyLoading.dismiss();

        APILogStorage.instance.addAPICall(
          apiURL: callingURL,
          header: _headers ?? {},
          responseBody: jsonDecode(responseString.data),
        );

        if (responseString.statusCode == 200) {
          return Future.value(
              NetworkResult.success(json.encode(responseString.data)));
        } else if (responseString.statusCode == 401 ||
            responseString.statusCode == 403) {
          return Future.value(NetworkResult.unAuthorised());
        } else {
          return Future.value(
              NetworkResult.error(json.encode(responseString.data)));
        }
      } catch (e, s) {
        EasyLoading.dismiss();
        if (_isDebug) {
          timber(e);
          timber(s);
        } else {
          // FirebaseCrashlytics.instance.recordError(e, s);
        }
        return Future.value(NetworkResult.cacheError());
      }
    } else {
      return Future.value(NetworkResult.noInternet());
    }
  }

  Future<NetworkResult> callPostMultiPartWithFromData(
      String path, FormData formData, bool isLoader,
      {String imagePathName = "image"}) async {
    var callingURL = "${Environment.config.apiHost}/$path";
    /* if (_notProperHeader()) */
    if (_isDebug) {
      timber("API URL -> $callingURL");
      timber("API Headers -> $_headers", usePrint: true);
      timber("API Parameters -> ${formData.fields}");
    }

    if (await isConnected()) {
      if (isLoader) {
        EasyLoading.show();
      }
      await AppUtils.validAuthTokenExpiry();
      await _createHeadersForMultipart();

      try {
        var dio = Dio();
        var responseString = await dio.post(callingURL,
            data: formData,
            options:
                Options(headers: _headers, contentType: "application/json"));

        if (_isDebug) timber("API Response -> $responseString");
        EasyLoading.dismiss();

        APILogStorage.instance.addAPICall(
            apiURL: callingURL,
            header: _headers ?? {},
            responseBody: jsonDecode(responseString.toString()),
            request: jsonDecode(formData.fields.toString()));

        if (responseString.statusCode == 200) {
          return Future.value(
              NetworkResult.success(json.encode(responseString.data)));
        } else if (responseString.statusCode == 401 ||
            responseString.statusCode == 403) {
          return Future.value(NetworkResult.unAuthorised());
        } else {
          return Future.value(
              NetworkResult.error(json.encode(responseString.data)));
        }
      } catch (e, s) {
        EasyLoading.dismiss();
        if (_isDebug) {
          timber(e);
          timber(s);
        } else {
          // FirebaseCrashlytics.instance.recordError(e, s);
        }
        return Future.value(NetworkResult.cacheError());
      }
    } else {
      return Future.value(NetworkResult.noInternet());
    }
  }

  bool notProperHeader() =>
      _headers == null ||
      _headers!.isEmpty ||
      _headers?.containsKey(NetworkConstant.authorization) == false;

  Future<void> _createHeaders({Map<String, String>? customHeaderMap}) async {
    String authToken = PreferenceStorage.getAuthToken();
    // if (kDebugMode) {
    //   logger.w("Api header auth token ===> $authToken");
    // }

    if (customHeaderMap != null) {
      _headers = customHeaderMap;
    } else if (authToken.isNotEmpty) {
      _headers = {
        "Content-Type": "application/json",
        "device-id": AppUtils.deviceID.toString(),
        "Accept": "application/json",
        "Accept-Language": "english",
        "device-type": Platform.isIOS ? "ios" : "Android",
        "device-name": Platform.isIOS
            ? AppUtils.iosInfo?.name ?? ''
            : AppUtils.androidInfo?.model ?? '',
        'app-environment': Environment.config.environment,
        NetworkConstant.authorization: NetworkConstant.bearer + authToken,
      };
    } else {
      _headers = {
        "Content-Type": "application/json",
        "device-id": AppUtils.deviceID.toString(),
        "Accept": "application/json",
        "Accept-Language": "english",
        "device-type": Platform.isIOS ? "ios" : "Android",
        "device-name": Platform.isIOS
            ? AppUtils.iosInfo?.name ?? ''
            : AppUtils.androidInfo?.model ?? '',
        'app-environment': Environment.config.environment,
        NetworkConstant.authorization: NetworkConstant.bearer + authToken,
      };
    }
  }

  Future<void> _createHeadersForMultipart() async {
    String authToken = PreferenceStorage.getAuthToken();
    if (authToken.isNotEmpty) {
      _headers = {
        "Content-Type": "multipart/form-data",
        // 'Accept': '*/*',
        "Accept": "application/json",
        "device-type": Platform.isIOS ? "ios" : "Android",
        "device-name": Platform.isIOS
            ? AppUtils.iosInfo?.name ?? ''
            : AppUtils.androidInfo?.model ?? '',
        'app-environment': Environment.config.environment,
        NetworkConstant.authorization: NetworkConstant.bearer + authToken,
      };
    } else {
      _headers = {
        // 'Accept': '*/*',
        "Accept": "application/json",
        "Content-Type": "multipart/form-data",
        "device-type": Platform.isIOS ? "ios" : "Android",
        "device-name": Platform.isIOS
            ? AppUtils.iosInfo?.name ?? ''
            : AppUtils.androidInfo?.model ?? '',
        'app-environment': Environment.config.environment,
        NetworkConstant.authorization: NetworkConstant.bearer + authToken,
      };
    }
  }

  Future<void> updateHeaders() async => await _createHeaders();

  Future<bool> isConnected() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }

  void makeHeaderNull() => _headers = null;
}
