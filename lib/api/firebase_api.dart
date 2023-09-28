import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:recipe.app/allGlobalKeys.dart';
import 'package:recipe.app/services/commonVariables.dart';

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> handleBanckgroudMessage(RemoteMessage remoteMessage) async {
    if (remoteMessage.contentAvailable) {
      print('Title: ${remoteMessage.notification?.title}');
      print('Body: ${remoteMessage.notification?.body}');
      print('Payload: ${remoteMessage.data}');
    }
  }

  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();
    await _firebaseMessaging.subscribeToTopic(dotenv.env['MESSAGE_TOPIC'].toString());
    final fcmToken = await _firebaseMessaging.getToken();
    print('firebase token $fcmToken');
    // store this token in local storage
    deviceStorage.ready.then((isReady) {
      if (isReady) {
        deviceStorage.setItem(LocalStorageStrings.deviceToken.name, fcmToken);
      }
    });

    FirebaseMessaging.onBackgroundMessage(handleBanckgroudMessage);
  }
}
