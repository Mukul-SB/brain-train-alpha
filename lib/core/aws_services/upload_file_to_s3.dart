// import 'dart:io';
//
// import 'package:amplify_core/amplify_core.dart';
// import 'package:aws_common/vm.dart';
//
// import '../basic_features.dart';
// import '../storage/preference_storage.dart';
// import '../utils/logger_util.dart';
//
// Future<String> uploadFileToS3(
//     {required File file,
//     required Function(double progress) onProgressChange}) async {
//   try {
//     int milliseconds = DateTime.now().millisecondsSinceEpoch;
//
//     // Getting the file name
//     String fileAbsoluteName = file.uri.pathSegments.last;
//
//     // Forming the fileName
//     String fileName =
//         "${PreferenceStorage.getSignInResponseModel()?.userId} _ $milliseconds _ $fileAbsoluteName"
//             .replaceAll(" ", "")
//             .replaceAll("(", "")
//             .replaceAll(")", "");
//
//     var result = await Amplify.Storage.uploadFile(
//       options: const StorageUploadFileOptions(
//         accessLevel: StorageAccessLevel.private,
//       ),
//       localFile: AWSFilePlatform.fromFile(file),
//       onProgress: (progress) {
//         onProgressChange(
//             (progress.transferredBytes / progress.totalBytes) * 100);
//       },
//       key: fileName,
//     ).result;
//     logger.i('Result: ${result.uploadedItem.key}');
//
//     return result.uploadedItem.key;
//   } on StorageException catch (e) {
//     EasyLoading.dismiss();
//     AppUtils.showSnackBar(message: "Error Uploading Image, please try Again");
//     logger.e('message - ${e.message}');
//     logger.e('recoverySuggestion - ${e.recoverySuggestion}');
//     logger.e('underlyingException - ${e.underlyingException}');
//     logger.e('props - ${e.props}');
//   } catch (e) {
//     logger.i(e);
//   }
//
//   return "";
// }
//
// Future<String> getDownloadUrl({
//   required String key,
//   required StorageAccessLevel accessLevel,
// }) async {
//   try {
//     final result = await Amplify.Storage.getUrl(
//       key: key,
//       options: StorageGetUrlOptions(
//         accessLevel: accessLevel,
//         // pluginOptions: const S3GetUrlPluginOptions(
//         //   validateObjectExistence: true,
//         //   expiresIn: Duration(days: 1),
//         // ),
//       ),
//     ).result;
//     return result.url.toString();
//   } on StorageException catch (e) {
//     logger.e('Could not get a downloadable URL: ${e.message}');
//     rethrow;
//   }
// }
