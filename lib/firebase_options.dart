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
    apiKey: 'AIzaSyD-_J1TikbbMGnMoUiBAou_ePRl0Ba3er8',
    appId: '1:1039228139227:web:2ccaa47ba2468fee203efe',
    messagingSenderId: '1039228139227',
    projectId: 'cabzpay-63864',
    authDomain: 'cabzpay-63864.firebaseapp.com',
    storageBucket: 'cabzpay-63864.appspot.com',
    measurementId: 'G-J0KWQ3RS74',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA4E1r4WhWbffWSveaAFDu9mHKfJ_qi8lk',
    appId: '1:1039228139227:android:0329298d6cd78952203efe',
    messagingSenderId: '1039228139227',
    projectId: 'cabzpay-63864',
    storageBucket: 'cabzpay-63864.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBXzKdB6aWKujIx6kocqqUN_PWhE6kfHlo',
    appId: '1:1039228139227:ios:fe3bcadb2c0a7288203efe',
    messagingSenderId: '1039228139227',
    projectId: 'cabzpay-63864',
    storageBucket: 'cabzpay-63864.appspot.com',
    iosClientId: '1039228139227-o42vv58bei9c4iqu95litgfhuf061dj1.apps.googleusercontent.com',
    iosBundleId: 'com.example.cabzpay',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBXzKdB6aWKujIx6kocqqUN_PWhE6kfHlo',
    appId: '1:1039228139227:ios:fe3bcadb2c0a7288203efe',
    messagingSenderId: '1039228139227',
    projectId: 'cabzpay-63864',
    storageBucket: 'cabzpay-63864.appspot.com',
    iosClientId: '1039228139227-o42vv58bei9c4iqu95litgfhuf061dj1.apps.googleusercontent.com',
    iosBundleId: 'com.example.cabzpay',
  );
}
