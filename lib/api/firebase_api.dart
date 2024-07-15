import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/foundation.dart';
import 'package:recipe.app/allGlobalKeys.dart';
import 'package:recipe.app/services/commonVariables.dart';

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> handleBanckgroudMessage(RemoteMessage remoteMessage) async {
    if (remoteMessage.contentAvailable) {
      debugPrint('Title: ${remoteMessage.notification?.title}');
      debugPrint('Body: ${remoteMessage.notification?.body}');
      debugPrint('Payload: ${remoteMessage.data}');
    }
  }

  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();
    await _firebaseMessaging
        .subscribeToTopic(dotenv.env['MESSAGE_TOPIC'].toString());
    final fcmToken = await _firebaseMessaging.getToken();
    debugPrint('firebase token $fcmToken');
    // store this token in local storage
    deviceStorage.ready.then((isReady) {
      if (isReady) {
        deviceStorage.setItem(LocalStorageStrings.deviceToken.name, fcmToken);
      }
    });

    FirebaseMessaging.onBackgroundMessage(handleBanckgroudMessage);
  }
}
