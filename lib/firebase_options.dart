// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


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
    apiKey: 'AIzaSyDiCS02oTrnk8PMIEsCfc3dbHeyYn5cQ8M',
    appId: '1:99693540560:web:28ff6fee01b7e65cb01ad5',
    messagingSenderId: '99693540560',
    projectId: 'barcode-d50e4',
    authDomain: 'barcode-d50e4.firebaseapp.com',
    storageBucket: 'barcode-d50e4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBasvyxcqihBFYBgKxYvi_OgSKRAjeq4vo',
    appId: '1:99693540560:android:75cc3837667195c8b01ad5',
    messagingSenderId: '99693540560',
    projectId: 'barcode-d50e4',
    storageBucket: 'barcode-d50e4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCNow7Eyr1Ezsbk_RsoarrztLNW24guE0w',
    appId: '1:99693540560:ios:b9fc91536125912fb01ad5',
    messagingSenderId: '99693540560',
    projectId: 'barcode-d50e4',
    storageBucket: 'barcode-d50e4.appspot.com',
    iosBundleId: 'com.example.flutterBalcoderFirstApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCNow7Eyr1Ezsbk_RsoarrztLNW24guE0w',
    appId: '1:99693540560:ios:b9fc91536125912fb01ad5',
    messagingSenderId: '99693540560',
    projectId: 'barcode-d50e4',
    storageBucket: 'barcode-d50e4.appspot.com',
    iosBundleId: 'com.example.flutterBalcoderFirstApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDiCS02oTrnk8PMIEsCfc3dbHeyYn5cQ8M',
    appId: '1:99693540560:web:bcc6b80904321d9fb01ad5',
    messagingSenderId: '99693540560',
    projectId: 'barcode-d50e4',
    authDomain: 'barcode-d50e4.firebaseapp.com',
    storageBucket: 'barcode-d50e4.appspot.com',
  );
}
