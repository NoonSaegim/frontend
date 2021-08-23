import 'package:flutter/material.dart';
import 'package:frontend/setting/cache.dart';
import 'package:provider/provider.dart';
import 'page5/image_picker.dart';
import 'page8/word_list.dart';
import 'page10/settings.dart';
import 'page7/multi_images_process.dart';
import 'setting/cache.dart';

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
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CacheablePeriod()),
        ],
        child: MaterialApp(
          initialRoute: '/settings',
          routes: {
            '/main': (context) => DemoPage(),
            '/pick': (context) => Gallery(),
            '/settings': (context) => Settings(),
            '/multi' : (context) => MultiImagesProcess(),
          },
        ),
    );
  }
}