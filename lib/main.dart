import 'package:flutter/material.dart';
import 'package:isalmi/core/rout/routs.dart';
import 'package:isalmi/core/rout/routs_page_name.dart';
import 'package:isalmi/core/theme/manger_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MangerTheme.theme,
      initialRoute: RoutsPageName.splashView,
      routes: Routs.rout(context),
    );
  }
}
