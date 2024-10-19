// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:collection/collection.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

Future initializeMessaging() async {
  // Inicializa o Firebase
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyBV7QNg4BaZyhmuITDgJDS5AJSC2JqfLHc",
        authDomain: "e-o-n-digital-m9kxl2.firebaseapp.com",
        projectId: "e-o-n-digital-m9kxl2",
        storageBucket: "e-o-n-digital-m9kxl2.appspot.com",
        messagingSenderId: "37552179600",
        appId: "1:37552179600:web:bd42d16aec8df0268d8b15"),
  );

  // Solicita permissão de notificações ao usuário
  bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
  if (!isAllowed) {
    // Solicita permissão caso ainda não tenha sido dada
    await AwesomeNotifications().requestPermissionToSendNotifications();
  }

  FirebaseMessaging.instance.requestPermission().then((settings) {
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      FirebaseMessaging.instance.getToken().then((token) {
        FFAppState().fcmToken = token ?? "No token";
      });
    } else {
      FFAppState().fcmToken = "No token";
    }
  });

  // Inicializa notificações locais com canal de alerta e som personalizado
  await AwesomeNotifications().initialize(
    null, // O app usa o ícone padrão
    [
      NotificationChannel(
        channelKey: 'alerts',
        channelName: 'Alerts',
        channelDescription: 'Notification tests as alerts',
        playSound: true,
        //soundSource: 'resource://raw/caixa_som.wav', // Usando o som customizado
        onlyAlertOnce: true,
        groupAlertBehavior: GroupAlertBehavior.Children,
        importance: NotificationImportance.High,
        defaultPrivacy: NotificationPrivacy.Private,
        defaultColor: Colors.deepPurple,
        ledColor: Colors.deepPurple,
      )
    ],
    debug: true,
  );

  // Escuta mensagens enquanto o app está rodando e cria notificações locais
  FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
    print("received message 1: ${message.notification?.title}");

    await AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: -1,
            channelKey: 'alerts',
            title: message.notification?.title ?? "No title",
            body: message.notification?.body ?? "No body",
            payload: {'notificationId': '1234567890'},
            notificationLayout: NotificationLayout.Default),
        actionButtons: [
          NotificationActionButton(
            key: "DISMISS",
            label: "Dismiss",
            actionType: ActionType.DismissAction,
            isDangerousOption: true,
          )
        ]);
  });
}
