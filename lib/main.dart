import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/views/home_view.dart';

void main() => runApp(DevicePreview(builder: (context) => MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale, // <--- Add the locale
      builder: DevicePreview.appBuilder,
      title: 'Flutter Responsive Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}