// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
// import 'package:amplify_flutter/amplify_flutter.dart';
// import 'package:amplify_storage_s3/amplify_storage_s3.dart';
//
// // Define your own prefix resolver, which implements the `S3PrefixResolver`.
// class MyPrefixResolver implements S3PrefixResolver {
//   const MyPrefixResolver();
//
//   @override
//   Future<String> resolvePrefix({
//     required StorageAccessLevel accessLevel,
//     String? identityId,
//   }) async {
//     if (accessLevel == StorageAccessLevel.guest) {
//       return 'temp/';
//     }
//
//     final String accessLevelPrefix;
//
//     if (accessLevel == StorageAccessLevel.protected) {
//       accessLevelPrefix = 'temp/';
//     } else {
//       accessLevelPrefix = 'temp/';
//     }
//
//     return accessLevelPrefix;
//   }
//
//   Future<String> getCurrentUserIdentityId() async {
//     final authPlugin = Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey);
//     final authSession = await authPlugin.fetchAuthSession();
//     return authSession.identityIdResult.value;
//   }
// }
