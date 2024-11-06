import UIKit

import Flutter

import OneSignalFramework

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
      OneSignal.Debug.setLogLevel(.LL_VERBOSE)
        
        // OneSignal initialization
        OneSignal.initialize("3666695e-654e-44cc-98bc-d7140da766e9", withLaunchOptions: launchOptions)
        
        // requestPermission will show the native iOS notification permission prompt.
        // We recommend removing the following code and instead using an In-App Message to prompt for notification permission
        OneSignal.Notifications.requestPermission({ accepted in
          print("User accepted notifications: \(accepted)")
        }, fallbackToSettings: true)

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
