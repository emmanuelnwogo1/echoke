// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-S1_zAv_-5nRYnVXC0epAzG3C-lgVkuw',
    appId: '1:200768933467:ios:4ffe96cadc1a1cbf00797e',
    messagingSenderId: '200768933467',
    projectId: 'echoke001-52bdc',
    storageBucket: 'echoke001-52bdc.appspot.com',
    iosBundleId: 'de.echoke.echoke',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAYUCd4WHo7GnW1wbcU47TRVydVxoEoeQM',
    appId: '1:200768933467:android:84fc6934e3f9fb4d00797e',
    messagingSenderId: '200768933467',
    projectId: 'echoke001-52bdc',
    storageBucket: 'echoke001-52bdc.appspot.com',
  );

}