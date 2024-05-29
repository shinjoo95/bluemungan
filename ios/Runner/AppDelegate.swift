import UIKit
import Flutter
import NaverThirdPartyLogin

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    NaverThirdPartyLoginConnection.getSharedInstance()?.isNaverAppOauthEnable = true;
    NaverThirdPartyLoginConnection.getSharedInstance()?.isInAppOauthEnable = true;

    let thirdConn = NaverThirdPartyLoginConnection.getSharedInstance()
    thirdConn?.serviceUrlScheme = "bluemunganurlscheme";
    thirdConn?.consumerKey = "nLj1FxzmzRq2a4vXDJRm";
    thirdConn?.consumerSecret = "cm5TfcXTsy";
    thirdConn?.appName = "bluemungan"

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }


  override func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
      var applicationResult = false
      if (!applicationResult) {
        applicationResult = NaverThirdPartyLoginConnection.getSharedInstance().application(app, open: url, options: options)
      }
      // if you use other application url process, please add code here.
      
      if (!applicationResult) {
        applicationResult = super.application(app, open: url, options: options)
      }
      return applicationResult
  }
}
