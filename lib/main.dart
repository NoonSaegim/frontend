import 'package:flutter/material.dart';
import 'page5/image_picker.dart';
import 'page8/word_list.dart';
import 'settings.dart';
import 'page7/multi_images_process.dart';
import 'cropper.dart';
import 'page6/multi_cropper.dart';
import 'mynote.dart';

void main() {
  runApp(MaterialApp(
    title: "Navigation Basics",
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/multi_cropper',
      routes: {

        '/main': (context) => DemoPage(),
        '/pick': (context) => Gallery(),
        '/settings': (context) => Settings(),
        '/multi' : (context) => MultiImagesProcess(),
        '/multi_cropper': (context) => MultiCropper(),
        '/mynote' : (context) => MyApp()
      },
    );
  }
}