import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_app_version_checker/flutter_app_version_checker.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:mobile_device_identifier/mobile_device_identifier.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';
// import 'package:video_thumbnail/video_thumbnail.dart';

import '../basic_features.dart';
import '../storage/preference_storage.dart';
import '../widgets/custom_image.dart';
import 'logger_util.dart';

String formatDateFromTO(String startTimestamp, String endTimestamp) {
  try {
    // Parse start and end timestamps into DateTime objects
    DateTime startDate = DateTime.parse(startTimestamp);
    DateTime endDate = DateTime.parse(endTimestamp);

    // Format the start and end days
    String formattedStartDay = DateFormat('d').format(startDate);
    String formattedEndDay = DateFormat('d').format(endDate);

    // Format the month and year
    String formattedMonthYear = DateFormat('MMMM yyyy').format(startDate);

    // Check if the start and end dates are in the same month
    if (startDate.month == endDate.month && startDate.year == endDate.year) {
      return '$formattedStartDay'
          'th to $formattedEndDay'
          'th $formattedMonthYear';
    } else {
      // If not in the same month, display both months
      String formattedStartDate = DateFormat('d').format(startDate);
      String formattedStartMonth = DateFormat('MMM yyy').format(startDate);
      String formattedEndDate = DateFormat('d').format(endDate);
      String formattedEndMonth = DateFormat('MMMM yyyy').format(endDate);
      return "${formattedStartDate}th $formattedStartMonth to ${formattedEndDate}th $formattedEndMonth";
    }
  } catch (e) {
    logger.e('Error parsing timestamps: $e');
    return 'Invalid date range';
  }
}

Future<void> gotoScreen(Widget screen) async {
  var data = await navigateToPage(screen);
  if (data != null) {}
}

void orientations() => SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

class AppUtils {
  static InputFormatter inputFormatter = InputFormatter();
  static RegExpression regExpression = RegExpression();
  static String packageName = '';
  static DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  static double bottomPadding(BuildContext context) =>
      buttonHeight(context) + MediaQuery.of(context).padding.bottom;

  static double buttonHeight(BuildContext context) {
    // print("AppBar().preferredSize.height    ${AppBar().preferredSize.height}");
    return AppBar().preferredSize.height;
  }

  // static AppCheckerResult? appVersion;
  static AndroidDeviceInfo? androidInfo;
  static IosDeviceInfo? iosInfo;
  static String? deviceID;
  static bool isAndroid = Platform.isAndroid;
  static bool isIos = Platform.isIOS;

  static String platform = Platform.isAndroid ? "Android" : "iOS";

  static String formatDateTimeToDayMonthYearTime(DateTime dateTime) {
    // Define the desired date and time format

    final DateFormat customFormat = DateFormat('d MMM yyyy, h:mm a');

    // Format the DateTime accordingly
    String formattedDateTime = customFormat.format(dateTime);

    return formattedDateTime;
  }

  static Future<void> config() async {
    await _getDeviceId();

    if (Platform.isAndroid) {
      androidInfo = await deviceInfoPlugin.androidInfo;
    } else {
      iosInfo = await deviceInfoPlugin.iosInfo;
    }
  }

  static Future<void> _getDeviceId() async {
    deviceID = await MobileDeviceIdentifier().getDeviceId();

    // Unique ID Visual Example
    // FC2776D6-D508-440E-B5EE-9E0E795AACD8 | iOS
    // 2B:B6:6D:03:D3:19:CA:8C:1E:BE:0E:E5:51:9A:17:39:0A:54:3D:E6:97:F0:68:D0:65:93:5D:5D:90:2D:9F:0D | Android
  }

  static String getDuration(Duration duration) {
    final int hours = duration.inHours.toString().length;
    return duration.inHours > 0
        ? hours == 1
            ? duration.toString().substring(0, 7)
            : duration.toString().substring(0, 8)
        : duration.toString().substring(2, 7);
  }

  static bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  static Future<void> validAuthTokenExpiry() async {
    final authExpiry = await PreferenceStorage.getAuthTokenExpiry();

    /// If [authExpiry] is Before Today (Expired Already)
    if (authExpiry != null && authExpiry.isBefore(DateTime.now())) {
      // await SignInController().justFetchToken();
    }
  }

  static String emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static Pattern phonePattern = r'(^[0-9 ]*$)';

  static void closeKeyboard() => FocusManager.instance.primaryFocus?.unfocus();

  static void closeApp() {
    if (Platform.isAndroid) {
      SystemNavigator.pop();
    }
    exit(0);
  }

  static showSnackBar(
      {bool isSuccess = false,
      String? title,
      required String message,
      int durationMilliSecond = 5000}) {
    if (!Get.isSnackbarOpen) {
      Get.snackbar(
        "",
        "",
        reverseAnimationCurve: Curves.fastOutSlowIn,
        maxWidth: Get.width * 0.92,
        borderRadius: Dimensions.r8,
        forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
        backgroundColor: ColorConst.primaryLightColor.withOpacity(0.8),
        duration: Duration(milliseconds: durationMilliSecond),
        icon: Container(
            margin: EdgeInsets.only(left: Dimensions.w5),
            height: Dimensions.w65,
            width: Dimensions.w65,
            child: Icon(
              isSuccess ? Icons.check_circle_outline : Icons.cancel_outlined,
              size: Dimensions.w30,
              color: Get.theme.colorScheme.textColor,
            )),
        titleText: Padding(
          padding: EdgeInsets.only(left: Dimensions.w5),
          child: Text(
            title ??
                (isSuccess
                    ? AppString.snackBarPositiveTitle.tr
                    : AppString.snackBarNegativeTitle.tr),
            style:
                fontStyleBold15.apply(color: Get.theme.colorScheme.textColor),
          ),
        ),
        margin: EdgeInsets.symmetric(horizontal: Dimensions.w8),
        messageText: Padding(
            padding: EdgeInsets.only(left: Dimensions.w5),
            child: Text(
              message,
              style: fontStyleMedium15.apply(
                  color: Get.theme.colorScheme.textColor),
            )),
      );
    }
  }

  // Sign Out Dialogue
  static showSignOutDialogue() {
    AppUtils.showCustomDialog(
        icon: ImageAsset.icDialogueQuestion,
        title: AppString.areYouSure,
        contentText: AppString.areYouSureLogout,
        firstButtonFunction: () async {
          // Sign Out
          // final signInController = SignInController();
          // bool isSignedOut = await signInController.signOutCurrentUser();
          // if (isSignedOut) {
          //   AppUtils.showSnackBar(
          //       message: "Signed Out Successfully!", isSuccess: true);
          // }

          // Clearing Shared Preferences & Navigating to Sign In Screen
          // PreferenceStorage.clearStorage();
          // Get.off(() => const SignInScreen());
        },
        firstButtonText: AppString.yesLogout,
        secondButtonText: AppString.cancel);
  }

  static String getEncryptedString({required String stringToEncrypt}) {
    var bytes = utf8.encode(stringToEncrypt);
    var mdEncrypt = md5.convert(bytes).toString();
    var bytes2 = utf8.encode(mdEncrypt);
    var en1 = sha256.convert(bytes2);
    return en1.toString();
  }

  static Color getRandomColor({bool dark = false}) {
    final Random random = Random();
    const int maxColorValue = 255;

    int randomColorComponent() => random.nextInt(maxColorValue);

    int randomRed = randomColorComponent();
    int randomGreen = randomColorComponent();
    int randomBlue = randomColorComponent();

    return dark
        ? Color.fromARGB(255, randomRed, randomGreen, randomBlue)
            .withOpacity(0.35)
        : Color.fromARGB(255, randomRed, randomGreen, randomBlue);
  }

  static String getUniqueName() {
    var uuid = const Uuid();
    return uuid.v4();
  }

  static String getCurrentDateInYMDTHMS() {
    DateTime date = DateTime.now();
    DateFormat format = DateFormat("yyyy-MM-ddTHH:mm:ss");
    String formattedDate = format.format(date);
    return formattedDate;
  }

  static String convertDateTimeToMDYHMSA(String date) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat('M/d/yyyy h:mm:ss a').format(dateTime);
    return formattedDate;
  }

  static String convertDateTimeToDMY(DateTime date) {
    String formattedDate = DateFormat('M/d/yyyy').format(date);
    return formattedDate;
  }

  static String convertDateTimeToHHmma(DateTime date) {
    String formattedDate = DateFormat('HH:mm a').format(date);
    return formattedDate;
  }

  static String convertDateAndTime(DateTime date) {
    String formattedDate = DateFormat('dd MMM').format(date);

    return formattedDate;
  }

  static String convertDateToFilterReq(DateTime? date) {
    String formattedDate = DateFormat('yyyy-MM-dd').format(date!);
    return formattedDate;
  }

  static String convertDurationToHHmma(Duration times) {
    /*final time = Duration( minutes: times.inMinutes);
    return "${time.toString().split(":")[0]}:${time.toString().split(":")[1]}";*/
    DateTime ftime = DateFormat("hh:mm").parse(times.toString());
    String ft = DateFormat('hh:mm a').format(ftime);
    return ft;
  }

  static bool isSingleEmoji(String text) {
    // Regular expression to match a single emoji
    final regex = RegExp(
      r'^[\u{1F600}-\u{1F64F}' // Emoticons
      r'\u{1F300}-\u{1F5FF}' // Miscellaneous Symbols and Pictographs
      r'\u{1F680}-\u{1F6FF}' // Transport and Map Symbols
      r'\u{1F1E0}-\u{1F1FF}' // Regional Indicator Symbols
      r'\u{2600}-\u{26FF}' // Miscellaneous Symbols
      r'\u{2700}-\u{27BF}' // Dingbats
      r'\u{1F900}-\u{1F9FF}' // Supplemental Symbols and Pictographs
      r'\u{1F018}-\u{1F251}' // Others
      r']+$',
      unicode: true,
    );

    // Check if the text contains only one emoji
    return regex.hasMatch(text);
  }

  static Future<void> openLink({required String link}) async {
    final Uri encodedURl = Uri.parse(link);

    try {
      await launchUrl(encodedURl, mode: LaunchMode.inAppWebView);
    } catch (e) {
      logger.e('Error launching URL: $e');
    }
  }

  // static Future<String?> genThumbnailFile(String path) async {
  //   final fileName = await VideoThumbnail.thumbnailFile(
  //     video: path,
  //     timeMs: 100,
  //     thumbnailPath: (await getTemporaryDirectory()).path,
  //     imageFormat: ImageFormat.JPEG,
  //   );
  //
  //   logger.f("Generated This Thumb -> $fileName");
  //   return fileName;
  // }

  static bool isVideoFile(String filePath) {
    final supportedVideoExtensions = [
      '.mp4',
      '.webm',
      '.mkv',
      '.avi',
      '.mov',
      '.wmv',
      '.flv',
      '.m4v',
      '.mpg',
      '.mpeg',
      '.3gp',
    ];

    final lowerCaseFilePath = filePath.toLowerCase();
    return supportedVideoExtensions
        .any((ext) => lowerCaseFilePath.endsWith(ext));
  }

  static String extractFilenameFromUrl(String url) {
    if (url.isNotEmpty) {
      // Split the URL by '/' and remove any query parameters
      final parts = url.split('/');
      final filename = parts.last.split('?')[0];
      return filename;
    }
    return url;
  }

  static Future<bool> isMediaPermissionGranted() async {
    final permission =
        Platform.isAndroid && AppUtils.androidInfo!.version.sdkInt <= 32
            ? Permission.storage
            : Permission.photos;

    final status = await permission.status;

    if (status.isDenied) {
      final newStatus = await permission.request();
      return newStatus.isGranted || newStatus.isLimited;
    } else if (status.isPermanentlyDenied) {
      openAppSettings();
      return false;
    } else {
      return true;
    }
  }

  static Future<bool> isExternalStoragePermissionGranted() async {
    var permission = androidInfo!.version.sdkInt <= 32
        ? Permission.storage
        : Permission.manageExternalStorage;

    final status = await permission.status;
    if (status.isDenied) {
      final newStatus = await permission.request();
      return newStatus.isGranted || newStatus.isLimited;
    } else if (status.isPermanentlyDenied) {
      openAppSettings();
      return false;
    } else {
      return true;
    }
  }

  static Future<bool> haveLocationPermission(
      {bool requestPermission = true}) async {
    final status = await Permission.location.status;
    if (requestPermission) {
      if (status.isDenied) {
        final newStatus = await Permission.location.request();
        return newStatus.isGranted || newStatus.isLimited;
      } else if (status.isPermanentlyDenied) {
        openAppSettings();
        return false;
      } else {
        return true;
      }
    } else {
      return status.isGranted || status.isLimited;
    }
  }

  static Future<void> getCurrentLocation() async {
    if (await AppUtils.haveLocationPermission()) {
      EasyLoading.show();
      /*final position =*/
      await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      // double latitude = position.latitude;
      // double longitude = position.longitude;

      EasyLoading.dismiss();
      // AppUtils.showSnackBar(
      //     message: "Latitude: $latitude, Longitude: $longitude",
      //     isSuccess: true);
    }
  }

  static RegExp amountRegExp = RegExp(r'([.]*0)(?!.*\d)');

  static bool validateEmail(String email) {
    return RegExp(emailPattern).hasMatch(email);
  }

  static showToast(val) => Fluttertoast.showToast(
      msg: val,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: ColorConst.blackColor,
      textColor: Colors.white,
      fontSize: 16.0);

  static Future<String> getCompressedImage(filePath) async {
    int randomImageInt = Random().nextInt(100);

    final dir = await getTemporaryDirectory();
    final targetPath = "${dir.absolute.path}/${randomImageInt.toString()}.jpg";

    XFile? result = await FlutterImageCompress.compressAndGetFile(
      filePath,
      targetPath,
      quality: 35,
    );

    // Delete the original file after compression
    File originalFile = File(filePath);
    if (await originalFile.exists()) {
      await originalFile.delete();
    }

    // final File compressedImageFile = File(targetPath);
    // int fileSizeInBytesAfter = compressedImageFile.lengthSync();
    // double fileSizeInKBAfter = fileSizeInBytesAfter / 1024;
    // logger.w("Compressed Size: $fileSizeInKBAfter ");
    return result!.path;
  }

  static void goFullScreen() =>
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  static Future<void> exitFullScreen() =>
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
        SystemUiOverlay.top,
        SystemUiOverlay.bottom,
      ]);

  static Future<void> openUrl({required String url, Uri? uri}) async {
    try {
      bool launched = await launchUrl(uri ?? Uri.parse(url),
          mode: LaunchMode
              .externalNonBrowserApplication); // Launch the app if installed!

      if (!launched) {
        launchUrl(Uri.parse(url)); // Launch web view if app is not installed!
      }
    } catch (e) {
      launchUrl(
        Uri.parse(url),
      ); // Launch web view if app is not installed!
    }
  }

  static void showCustomDialog({
    String? title,
    String? contentText,
    bool barrierDismiss = true,
    bool mergeDefaultWithContent = false,
    String? firstButtonText,
    Widget? myWidget,
    String? icon,
    Function? onDialogCloseFunction,
    VoidCallback? firstButtonFunction,
    VoidCallback? secondButtonFunction,
    String? secondButtonText,
  }) =>
      showGeneralDialog(
        context: Get.context!,
        barrierDismissible: barrierDismiss,
        barrierLabel: "Meow",
        transitionDuration: const Duration(milliseconds: 350),
        transitionBuilder: (_, animation, __, child) {
          return ScaleTransition(
              scale:
                  Tween<double>(begin: 0.9, end: 1.0).animate(CurvedAnimation(
                parent: animation,
                curve: Curves.easeOut,
              )),
              child: FadeTransition(
                opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: Curves.easeOut,
                  ),
                ),
                child: child,
              ));
        },
        pageBuilder: (context, _, __) => Center(
          child: Container(
            width: Get.width * 0.78,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.r15),
              color: Get.theme.colorScheme.dialogColor,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // Close Icon
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: CustomSvgAssetImage(
                      image: ImageAsset.icCross,
                      width: Dimensions.w15,
                      height: Dimensions.w15,
                    ),
                    onPressed: () => Get.back(),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(Dimensions.commonPaddingForScreen)
                      .copyWith(top: 0),
                  child: myWidget != null && !mergeDefaultWithContent
                      ? myWidget
                      : Column(
                          children: [
                            // Top Icon
                            if (icon != null)
                              CustomSvgAssetImage(
                                image: icon,
                                width: Dimensions.w130,
                                height: Dimensions.w130,
                              ),

                            // Title Text
                            if (title != null)
                              Text(
                                title,
                                style: fontStyleBold18.copyWith(
                                    color: Get.theme.colorScheme.textColor),
                              ),
                            SizedBox(
                              height: Dimensions.h2,
                            ),

                            // Content Text
                            if (contentText != null)
                              Text(
                                contentText,
                                textAlign: TextAlign.center,
                                style: fontStyleMedium12.copyWith(
                                    color: Get.theme.colorScheme.textColor),
                              ),

                            if (myWidget != null) myWidget,

                            // First Button
                            if (firstButtonText != null)
                              Padding(
                                padding: EdgeInsets.only(top: Dimensions.h10),
                                child: MyButton(
                                    onPressed: () {
                                      Get.back();
                                      firstButtonFunction?.call();
                                    },
                                    cornerRadius: Dimensions.r10,
                                    height: Dimensions.h32,
                                    textStyle: fontStyleSemiBold14.copyWith(
                                        color: Colors.white,
                                        fontSize: Dimensions.sp13),
                                    title: firstButtonText),
                              ),

                            // Second Button
                            if (secondButtonText != null)
                              TextButton(
                                  onPressed: () {
                                    secondButtonFunction?.call();
                                  },
                                  child: Text(
                                    secondButtonText,
                                    style: fontStyleSemiBold14.copyWith(
                                        color: Colors.redAccent,
                                        fontSize: Dimensions.sp13),
                                  )),
                          ],
                        ),
                ),
              ],
            ),
          ),
        ),
      ).then((_) => onDialogCloseFunction?.call());

  static Future<dynamic> openCustomBottomSheet({
    required Widget contentWidget,
    Widget? fixedBottomWidget,
    VoidCallback? onSheetClose,
    bool isInnerHorizontalPadding = true,
    bool hideTopHook = false,
  }) {
    return showModalBottomSheet(
        useRootNavigator: true,
        isScrollControlled: true,
        context: Get.context!,
        builder: (context) => SafeArea(
              bottom: false,
              child: Wrap(
                children: [
                  Container(
                    width: Dimensions.screenWidth(),
                    decoration: BoxDecoration(
                      color: Get.theme.scaffoldBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.r15),
                          topRight: Radius.circular(Dimensions.r15)),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Column(
                          children: [
                            if (!hideTopHook)
                              SizedBox(
                                height: Dimensions.h12,
                              ),

                            if (!hideTopHook)
                              Container(
                                width: Dimensions.w40,
                                height: Dimensions.h6,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.r15),
                                  color: Get.theme.colorScheme.textColor
                                      .withOpacity(0.2),
                                ),
                              ),

                            SizedBox(
                              height: Dimensions.h10,
                            ),

                            // Content Widget
                            Container(
                              constraints:
                                  BoxConstraints(maxHeight: Get.height * 0.82),
                              padding: EdgeInsets.symmetric(
                                horizontal: isInnerHorizontalPadding
                                    ? Dimensions.commonPaddingForScreen
                                    : 0,
                              ).copyWith(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom +
                                        16.0,
                              ),
                              child:
                                  SingleChildScrollView(child: contentWidget),
                            ),

                            SizedBox(
                              height: Dimensions.h20,
                            ),
                          ],
                        ),
                        if (fixedBottomWidget != null)
                          Padding(
                            padding: EdgeInsets.symmetric(
                                    horizontal:
                                        Dimensions.commonPaddingForScreen)
                                .copyWith(bottom: Dimensions.h10),
                            child: fixedBottomWidget,
                          )
                      ],
                    ),
                  ),
                ],
              ),
            )).then((_) => onSheetClose?.call());
  }

  static bool showTimer(val) {
    return DateTime.now().compareTo(DateFormat("yyyy-MM-dd").parse(val)) == -1;
  }

  static bool checkCurrentDate(val) {
    return DateTime.now().compareTo(DateFormat("dd/M/yyyy").parse(val)) > 0;
  }

  static Color? colorConvert(String? color) {
    if (color != null) {
      return Color(int.parse(color.replaceAll('#', '0xFF')));
    } else {
      return null;
    }
  }

  static DateTime? backButtonPressedTime;

  // For Pop Scope
  static showExitPopScopePopup(BuildContext context) {
    DateTime currentTime = DateTime.now();

    bool backButton = backButtonPressedTime == null ||
        currentTime.difference(backButtonPressedTime!) >
            const Duration(seconds: 3);

    if (backButton) {
      backButtonPressedTime = currentTime;
      AppUtils.showToast('Press again to exit');
    } else {
      SystemNavigator.pop();
    }
  }

  static Future<String> getStoragePath() async {
    String? storageFolderPath;
    if (Platform.isAndroid) {
      Directory appDirectory = await getApplicationDocumentsDirectory();
      final splittedPath = appDirectory.path.split('/');
      splittedPath.removeLast();
      Directory folder = Directory('${splittedPath.join('/')}/files');
      folder.createSync(recursive: true);
      storageFolderPath = folder.path;
    } else {
      Directory appDirectory = await getApplicationDocumentsDirectory();
      storageFolderPath = appDirectory.path;
    }
    return storageFolderPath;
  }

  static Future<String> getTempStoragePath() async {
    String? storageFolderPath;
    if (Platform.isAndroid) {
      Directory appDirectory = await getApplicationDocumentsDirectory();
      final splittedPath = appDirectory.path.split('/');
      splittedPath.removeLast();
      Directory folder = Directory('${splittedPath.join('/')}/files/temp');
      folder.createSync(recursive: true);
      storageFolderPath = folder.path;
    } else {
      Directory appDirectory = await getApplicationDocumentsDirectory();
      // final splittedPath = appDirectory.path.split('/');
      // splittedPath.removeLast();
      Directory folder = Directory('${appDirectory.path}/temp');
      if (await folder.exists()) {
        return folder.path;
      } else {
        folder.createSync(recursive: true);
        storageFolderPath = folder.path;
      }
    }
    return storageFolderPath;
  }

  static Future<void> deleteTempStoragePath() async {
    if (Platform.isAndroid) {
      Directory appDirectory = await getApplicationDocumentsDirectory();
      final splittedPath = appDirectory.path.split('/');
      splittedPath.removeLast();
      Directory folder = Directory('${splittedPath.join('/')}/files/temp');
      if (await folder.exists()) {
        folder.deleteSync(recursive: true);
      }
    } else {
      Directory appDirectory = await getApplicationDocumentsDirectory();
      Directory folder = Directory('${appDirectory.path}/temp');
      if (await folder.exists()) {
        folder.deleteSync(recursive: true);
      }
    }
  }

  // Get 2 initials
  static String getInitials(String name) => name.isNotEmpty
      ? name.trim().split(' ').map((l) => l[0]).take(2).join().toUpperCase()
      : '';
}

class InputFormatter {
  FilteringTextInputFormatter get number =>
      FilteringTextInputFormatter.allow(RegExp(r"[0-9]"));
}

class RegExpression {
  RegExp phonePattern = RegExp(r'(^[0-9 ]*$)');
}

class FontAsset {
  static const String poppins = "Poppins";
  static const String sfPro = "SFProText";

  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

class MyDivider extends StatelessWidget {
  final double height;
  final Color? color;

  const MyDivider({super.key, this.height = 1, this.color});

  @override
  Widget build(BuildContext context) {
    return Divider(height: height, color: color ?? ColorConst.dividerColor);
  }
}

class Debounce {
  final int milliseconds;
  Timer? _timer;

  Debounce({required this.milliseconds});

  void run(VoidCallback action) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void dispose() => _timer?.cancel();
}
