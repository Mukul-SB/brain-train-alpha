// import 'dart:convert';
//
// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
// import 'package:amplify_core/amplify_core.dart';
// import 'package:amplify_storage_s3/amplify_storage_s3.dart';
//
// import '../environment_setup/environment.dart';
// import '../utils/logger_util.dart';
// import 'prefix_resolver.dart';
//
// class CognitoHelpingHand {
//   static final _amplifyDevConfig = jsonEncode({
//     "UserAgent": "aws-amplify-cli/1.6.0",
//     "Version": "1.0",
//     "auth": {
//       "plugins": {
//         "awsCognitoAuthPlugin": {
//           "IdentityManager": {"Default": {}},
//           "CredentialsProvider": {
//             "CognitoIdentity": {
//               "Default": {
//                 "PoolId": "us-east-1:49cc4b03-b9f4-4015-b988-05323a3ec8e4",
//                 "Region": "us-east-1"
//               }
//             }
//           },
//           "CognitoUserPool": {
//             "Default": {
//               "PoolId": "us-east-1_KaI85wjlz",
//               "AppClientId": "47lof60aqdq5voftbo5ca65d1g",
//               "Region": "us-east-1"
//             }
//           },
//           "Auth": {
//             "Default": {
//               "authenticationFlowType": "USER_SRP_AUTH",
//               "OAuth": {
//                 "WebDomain": "https://fhb.auth.us-east-1.amazoncognito.com",
//                 "AppClientId": "47lof60aqdq5voftbo5ca65d1g",
//                 "SignInRedirectURI":
//                     "[CUSTOM REDIRECT SCHEME AFTER SIGN IN, e.g. myapp://]",
//                 "SignOutRedirectURI":
//                     "[CUSTOM REDIRECT SCHEME AFTER SIGN OUT, e.g. myapp://]",
//                 "Scopes": [
//                   "phone",
//                   "email",
//                   "openid",
//                   "profile",
//                   "aws.cognito.signin.user.admin"
//                 ]
//               }
//             }
//           }
//         }
//       }
//     },
//     "storage": {
//       "plugins": {
//         "awsS3StoragePlugin": {"bucket": "dev-fhb", "region": "us-east-1"}
//       }
//     }
//   });
//
//   static final _amplifyStagingConfig = jsonEncode({
//     "UserAgent": "aws-amplify-cli/1.6.0",
//     "Version": "1.0",
//     "auth": {
//       "plugins": {
//         "awsCognitoAuthPlugin": {
//           "IdentityManager": {"Default": {}},
//           "CredentialsProvider": {
//             "CognitoIdentity": {
//               "Default": {
//                 "PoolId": "us-east-1:a0504075-072f-4916-a125-a9acb9628da1",
//                 "Region": "us-east-1"
//               }
//             }
//           },
//           "CognitoUserPool": {
//             "Default": {
//               "PoolId": "us-east-1_N5TzVHVoN",
//               "AppClientId": "4hhiur1nuk9t1m8ja7jt2mt57b",
//               "Region": "us-east-1"
//             }
//           },
//           "Auth": {
//             "Default": {
//               "authenticationFlowType": "USER_SRP_AUTH",
//               "OAuth": {
//                 "WebDomain": "https://fhb.auth.us-east-1.amazoncognito.com",
//                 "AppClientId": "4hhiur1nuk9t1m8ja7jt2mt57b",
//                 "SignInRedirectURI":
//                     "[CUSTOM REDIRECT SCHEME AFTER SIGN IN, e.g. myapp://]",
//                 "SignOutRedirectURI":
//                     "[CUSTOM REDIRECT SCHEME AFTER SIGN OUT, e.g. myapp://]",
//                 "Scopes": [
//                   "phone",
//                   "email",
//                   "openid",
//                   "profile",
//                   "aws.cognito.signin.user.admin"
//                 ]
//               }
//             }
//           }
//         }
//       }
//     },
//     "storage": {
//       "plugins": {
//         "awsS3StoragePlugin": {"bucket": "stag-fhb", "region": "us-east-1"}
//       }
//     }
//   });
//
//   static Future<void> configureAmplify({required String environment}) async {
//     try {
//       final storage =
//           AmplifyStorageS3(prefixResolver: const MyPrefixResolver());
//       Amplify.addPlugins([AmplifyAuthCognito(), storage]);
//       await Amplify.configure(environment == Environment.development
//           ? _amplifyDevConfig
//           : _amplifyStagingConfig);
//       logger.i('$environment Amplify configured successfully');
//     } catch (e) {
//       logger.e('Error configuring $environment Amplify: $e');
//     }
//   }
// }
