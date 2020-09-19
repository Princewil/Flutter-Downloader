import 'package:flutter/material.dart';
import 'package:offline_downloads_demo/onlineList.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
const debug = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(debug: debug);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnlineList(),
    );
  }
}
