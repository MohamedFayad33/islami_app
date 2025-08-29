import 'package:flutter/material.dart';
import 'package:isalmi/core/rout/routs_page_name.dart';
import 'package:isalmi/modules/layout/layout_view.dart';
import 'package:isalmi/modules/splash/splash_view.dart';

abstract class Routs {
  static Map<String, Widget Function(BuildContext)> rout(BuildContext contex) {
    return {
      RoutsPageName.splashView: (contex) => const SplashView(),
      RoutsPageName.layoutView: (contex) => const LayoutView(),
    };
  }
}
