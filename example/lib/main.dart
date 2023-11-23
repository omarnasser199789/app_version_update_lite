import 'package:app_version_update_lite/app_version_update_lite.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app_version_update_lite_example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'app_version_update_lite_example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    _verifyVersion();
  }

  void _verifyVersion() async {
    await AppVersionUpdate.checkForUpdates(
      appleId: '1459706595',
      playStoreId: 'com.byebnk.app',
      country: 'br',
    ).then((result) async {
      if (result.canUpdate!) {
        print("You can update your app");
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container() // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
