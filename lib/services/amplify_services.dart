// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
// import 'package:amplify_flutter/amplify_flutter.dart';
//
// class AmplifyServices {
//   static const config = '''{
//   "UserAgent": "aws-amplify-cli/2.0",
//   "Version": "1.0",
//
//   "auth": {
//       "plugins": {
//           "awsCognitoAuthPlugin": {
//               "IdentityManager": {
//                   "Default": {}
//               },
//               "CredentialsProvider": {
//                   "CognitoIdentity": {
//                       "Default": {
//                           "PoolId": "ap-south-1:e6a3189e-c4d2-4222-96ba-8ce59b928721",
//                           "Region": "ap-south-1"
//                       }
//                   }
//               }
//
//
//       }
//   }
// }
// }''';
//
//   Future configure() async {
//     AmplifyAuthCognito auth = AmplifyAuthCognito();
//
//     print("configuration ${await Amplify.isConfigured}");
//     try {
//       await Amplify.addPlugin(auth);
//     } catch (e) {
//       print(e);
//     }
//
//     if (!Amplify.isConfigured) {
//       try {
//         await Amplify.configure(config);
//       } catch (e) {
//         print(e);
//       }
//     }
//     print(await Amplify.isConfigured);
//   }
//
//   Future signIn(username, password) async {
//     SignInResult a =
//         await Amplify.Auth.signIn(username: username, password: password);
//     print(SignInResult);
//     print(a.isSignedIn);
//     return a;
//   }
// }
