// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAuNqmJRZApW6ixu-oZKCA2xs8Cffr78J8',
    appId: '1:840677277140:web:576d12883b5093d0762a41',
    messagingSenderId: '840677277140',
    projectId: 'kagazpatra-9380e',
    authDomain: 'kagazpatra-9380e.firebaseapp.com',
    storageBucket: 'kagazpatra-9380e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDvWGXQeDNeu27jUkwdiVX59rCN4iyv1E8',
    appId: '1:840677277140:android:450d0dacb78d0a96762a41',
    messagingSenderId: '840677277140',
    projectId: 'kagazpatra-9380e',
    storageBucket: 'kagazpatra-9380e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBknPJ0bJkwni07Ytvn7ajXWxlzAjtxUnU',
    appId: '1:840677277140:ios:04f893160e4e4cd4762a41',
    messagingSenderId: '840677277140',
    projectId: 'kagazpatra-9380e',
    storageBucket: 'kagazpatra-9380e.appspot.com',
    androidClientId: '840677277140-fi91qgd14pku10o5cvdbdap3ugbvto55.apps.googleusercontent.com',
    iosClientId: '840677277140-o42ng1b0a4eoerna8ce8u2rs3sk81pvm.apps.googleusercontent.com',
    iosBundleId: 'com.example.kagazpatra',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBknPJ0bJkwni07Ytvn7ajXWxlzAjtxUnU',
    appId: '1:840677277140:ios:04f893160e4e4cd4762a41',
    messagingSenderId: '840677277140',
    projectId: 'kagazpatra-9380e',
    storageBucket: 'kagazpatra-9380e.appspot.com',
    androidClientId: '840677277140-fi91qgd14pku10o5cvdbdap3ugbvto55.apps.googleusercontent.com',
    iosClientId: '840677277140-o42ng1b0a4eoerna8ce8u2rs3sk81pvm.apps.googleusercontent.com',
    iosBundleId: 'com.example.kagazpatra',
  );
}