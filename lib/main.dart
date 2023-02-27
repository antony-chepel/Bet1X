import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/services.dart';

void main() {
  Map<String, Object> appsFlyerOptions = {
    "afDevKey": "6zrXofgemB6eiuGR7DWZ3K",
    "isDebug": true};

  AppsflyerSdk appsflyerSdk = AppsflyerSdk(appsFlyerOptions);
  appsflyerSdk.initSdk(
      registerConversionDataCallback: true,
      registerOnAppOpenAttributionCallback: true,
      registerOnDeepLinkingCallback: true
  );
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: [
    SystemUiOverlay.bottom,
  ]);
  runApp(MyApp());

}

class MyApp extends StatelessWidget {







  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
              child: Scaffold(
                body:WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: "https://solosportsworld.affiliatesbet.net/",
                ),
              ),
            )
        )
    );
  }
}
