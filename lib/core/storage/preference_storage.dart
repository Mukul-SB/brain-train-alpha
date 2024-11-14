import 'dart:convert';

import 'package:get_storage/get_storage.dart';

import '../basic_features.dart';
import '../environment_setup/environment.dart';
import '../model/response_model/master_like_type_response_model.dart';
import '../model/response_model/sign_in_response_model.dart';

class PreferenceStorage {
  static final GetStorage _storage = GetStorage();

  //  First Location Permission
  static bool getFirstPermissionLocation() =>
      _storage.read<bool>("FirstPermissionLocation") ?? false;

  static Future<bool?> setFirstPermissionLocation(bool value) async {
    try {
      await _storage.write("FirstPermissionLocation", value);
      return true;
    } catch (error) {
      return null;
    }
  }

  //  First Camera Permission
  static bool getFirstPermissionCamera() =>
      _storage.read<bool>("FirstPermissionCamera") ?? false;

  static Future<bool?> setFirstPermissionCamera(bool value) async {
    try {
      await _storage.write("FirstPermissionCamera", value);
      return true;
    } catch (error) {
      return null;
    }
  }

  //  First Contact Permission
  static bool getFirstPermissionContact() =>
      _storage.read<bool>("FirstPermissionContact") ?? false;

  static Future<bool?> setFirstPermissionContact(bool value) async {
    try {
      await _storage.write("FirstPermissionContact", value);
      return true;
    } catch (error) {
      return null;
    }
  }

  //  First Photo Permission
  static bool getFirstPermissionPhoto() =>
      _storage.read<bool>("FirstPermissionPhoto") ?? false;

  static Future<bool?> setFirstPermissionPhoto(bool value) async {
    try {
      await _storage.write("FirstPermissionPhoto", value);
      return true;
    } catch (error) {
      return null;
    }
  }

  //  First Microphone Permission
  static bool getFirstPermissionMicroPhone() =>
      _storage.read<bool>("FirstPermissionMicroPhone") ?? false;

  static Future<bool?> setFirstPermissionMicroPhone(bool value) async {
    try {
      await _storage.write("FirstPermissionMicroPhone", value);
      return true;
    } catch (error) {
      return null;
    }
  }

  //  First Storage Permission
  static bool getFirstPermissionStorage() =>
      _storage.read<bool>("FirstPermissionStorage") ?? false;

  static Future<bool?> setFirstPermissionStorage(bool value) async {
    try {
      await _storage.write("FirstPermissionStorage", value);
      return true;
    } catch (error) {
      return null;
    }
  }

  //  Login Status
  static bool getIsUserLoggedIn() =>
      _storage.read<bool>("IsUserLoggedIn") ?? false;

  static Future<bool?> setIsUserLoggedIn(bool value) async {
    try {
      await _storage.write("IsUserLoggedIn", value);
      return true;
    } catch (error) {
      return null;
    }
  }

  // Show Welcome Screen
  static bool getShowWelcomeScreen() =>
      _storage.read<bool>("showWelcomeScreen") ?? true;

  static Future<bool?> setShowWelcomeScreen(bool value) async {
    try {
      await _storage.write("showWelcomeScreen", value);
      return true;
    } catch (error) {
      return null;
    }
  }

  // Current AppLocale
  static String getAppLocale() => _storage.read<String>("AppLocale") ?? "";

  static Future<bool?> setAppLocale(String value) async {
    try {
      await _storage.write("AppLocale", value);
      return true;
    } catch (error) {
      return null;
    }
  }

  // Current Latitude
  static String getCurrentLatitude() =>
      _storage.read<String>("CurrentLatitude") ?? "0.0";

  static Future<bool?> setCurrentLatitude(String value) async {
    try {
      await _storage.write("CurrentLatitude", value);
      return true;
    } catch (error) {
      return null;
    }
  }

  // Current Longitude
  static String getCurrentLongitude() =>
      _storage.read<String>("CurrentLongitude") ?? "0.0";

  static Future<bool?> setCurrentLongitude(String value) async {
    try {
      await _storage.write("CurrentLongitude", value);
      return true;
    } catch (error) {
      return null;
    }
  }

  // For FCM token
  static Future<bool?> setFcmToken(String? value) async {
    try {
      await _storage.write("FcmToken", value ?? '');
      return true;
    } catch (error) {
      debugPrint(error.toString());
      return null;
    }
  }

  static String getFcmToken() {
    return _storage.read<String>("FcmToken") ?? '';
  }

  // For token

  static Future<bool?> setAuthTokenExpiry(DateTime value) async {
    try {
      await _storage.write("AuthTokenExpiry", value.toIso8601String());
      return true;
    } catch (error) {
      debugPrint(error.toString());
      return null;
    }
  }

  static Future<DateTime?> getAuthTokenExpiry() async {
    final authExpiryDate = _storage.read<String>("AuthTokenExpiry");
    return authExpiryDate != null ? DateTime.parse(authExpiryDate) : null;
  }

  static Future<bool?> setAuthToken(String? value) async {
    try {
      await _storage.write("AuthToken", value ?? '');
      return true;
    } catch (error) {
      debugPrint(error.toString());
      return null;
    }
  }

  static String getAuthToken() => _storage.read<String>("AuthToken") ?? '';

  // For String
  static void setString(String key, String value) => _storage.write(key, value);

  static String? getString(String key) => _storage.read<String>(key);

  // For int
  static void setInt(String key, int value) => _storage.write(key, value);

  static int? getInt(String key) => _storage.read<int>(key);

  // For double
  static void setDouble(String key, double value) => _storage.write(key, value);

  static double? getDouble(String key) => _storage.read<double>(key);

  // For bool
  static void setBool(String key, bool value) => _storage.write(key, value);

  static bool getBool(String key) => _storage.read<bool>(key) ?? false;

  // For object
  static Future<bool?>? putObject(String key, Object value) async {
    try {
      await _storage.write(key, jsonEncode(value));
      return true;
    } catch (error) {
      debugPrint(error.toString());
      return null;
    }
  }

  static Future<Object?>? getObject(String key) async {
    try {
      String? json = _storage.read<String>(key);
      if (json == null) {
        return null;
      }
      return jsonDecode(json);
    } catch (error) {
      debugPrint(error.toString());
      return null;
    }
  }

  // To Get Models

  // To Get Sign In Response Model
  static SignInResponseModel? getSignInResponseModel() {
    String? data = _storage.read("AppString.signInResponseModelKey");
    return (data == null || data.isEmpty)
        ? null
        : SignInResponseModel.fromJson(jsonDecode(data));
  }

  // To Get Like Types List
  static List<MasterLikeTypeResponseModel>? getLikeTypeList() {
    String? data = _storage.read("AppString.likeTypeKey");
    return (data == null || data.isEmpty)
        ? null
        : masterLikeTypeResponseModelFromJson(jsonDecode(data));
  }

  static bool hasData(String key) => _storage.hasData(key);

  // To Remove Particular Key
  static void removeValue(String key) => _storage.remove(key);

  // To Clear All Prefs
  static Future<void> clearStorage() async {
    // Temporary stop for Preference Values which need to stay even after clearing all Preferences
    final buildMode =
        PreferenceStorage.getString(AppString.currentBuildModeKey) ??
            Environment.development;

    final locale = getAppLocale();

    await _storage.erase();

    // Putting Value Back
    PreferenceStorage.setAppLocale(locale);
    PreferenceStorage.setString(AppString.currentBuildModeKey, buildMode);
  }
}
