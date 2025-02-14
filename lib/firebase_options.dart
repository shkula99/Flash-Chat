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
        return windows;
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
    apiKey: 'AIzaSyAgfHECBKKw5nxInPMVMdOuded0xmgQbA8',
    appId: '1:612827837781:web:dda5a881e4780eebe2ebdc',
    messagingSenderId: '612827837781',
    projectId: 'flash-chat-27645',
    authDomain: 'flash-chat-27645.firebaseapp.com',
    storageBucket: 'flash-chat-27645.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBvL0q2DqO1rnpJ3dsLFHqPknxypBMiBeQ',
    appId: '1:612827837781:android:aad434c1f8df2780e2ebdc',
    messagingSenderId: '612827837781',
    projectId: 'flash-chat-27645',
    storageBucket: 'flash-chat-27645.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyASBgAJa_2e7HVKz6kGCfao2dNbZHmDL68',
    appId: '1:612827837781:ios:1f0cb7c9b4c4d027e2ebdc',
    messagingSenderId: '612827837781',
    projectId: 'flash-chat-27645',
    storageBucket: 'flash-chat-27645.firebasestorage.app',
    iosBundleId: 'com.example.flashChatStartingProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyASBgAJa_2e7HVKz6kGCfao2dNbZHmDL68',
    appId: '1:612827837781:ios:1f0cb7c9b4c4d027e2ebdc',
    messagingSenderId: '612827837781',
    projectId: 'flash-chat-27645',
    storageBucket: 'flash-chat-27645.firebasestorage.app',
    iosBundleId: 'com.example.flashChatStartingProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAgfHECBKKw5nxInPMVMdOuded0xmgQbA8',
    appId: '1:612827837781:web:b7347c62d4bece29e2ebdc',
    messagingSenderId: '612827837781',
    projectId: 'flash-chat-27645',
    authDomain: 'flash-chat-27645.firebaseapp.com',
    storageBucket: 'flash-chat-27645.firebasestorage.app',
  );
}
