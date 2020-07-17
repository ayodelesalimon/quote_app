// import 'dart:io';

// import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:quote_app/screen/home.dart';

import 'package:quote_app/screen/random.dart';

void main() 
{ 
//   Admob.initialize(getAppId());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
    );
}
}
// String getAppId() {
//   if (Platform.isIOS) {
//     return 'ca-app-pub-3940256099942544~1458002511';
//   } else if (Platform.isAndroid) {
//     return 'ca-app-pub-3940256099942544~3347511713';
//   }
//   return null;
// }