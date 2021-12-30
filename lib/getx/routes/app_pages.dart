import 'package:get/get.dart';
import 'package:study_flutter/getx/page/GetXPage.dart';
import 'package:study_flutter/getx/page/di/GetDiPage.dart';
import 'package:study_flutter/getx/page/local/local_view.dart';
import 'package:study_flutter/getx/page/nav/GetNavPage.dart';
import 'package:study_flutter/getx/page/nav/GetNavPageThree.dart';
import 'package:study_flutter/getx/page/nav/GetNavPageTwo.dart';
import 'package:study_flutter/getx/page/state/state_binding.dart';
import 'package:study_flutter/getx/page/state/state_view.dart';
import 'package:study_flutter/getx/page/widget/GetBottomsheetsPage.dart';
import 'package:study_flutter/getx/page/widget/GetDialogsPage.dart';
import 'package:study_flutter/getx/page/widget/GetSnackbarsPage.dart';
import 'package:study_flutter/getx/page/widget/GetWidgetPage.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      // 名称
      name: Routes.GETX,
      // 页面
      page: () => GetXPage(),
    ),
    GetPage(
      name: Routes.NAV,
      page: () => GetNavPage(),
    ),
    GetPage(
      name: Routes.NAV2,
      page: () => GetNavPageTwo(),
      // 动画效果
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: Routes.NAV3,
      page: () => GetNavPageThree(),
    ),
    GetPage(
      name: Routes.WIDGET,
      page: () => GetWidgetPage(),
    ),
    GetPage(
      name: Routes.WIDGET_SNACKBARS,
      page: () => GetSnackbarsPage(),
    ),
    GetPage(
      name: Routes.WIDGET_DIALOGS,
      page: () => GetDialogsPage(),
    ),
    GetPage(
      name: Routes.WIDGET_BOTTOMSSHEETS,
      page: () => GetBottomsheetsPage(),
    ),
    GetPage(
      name: Routes.STATE,
      page: () => GetStatePage(),
      // 将 Controller 的生命周期与View绑定起来
      binding: GetStateBinding(),
    ),
    GetPage(
      name: Routes.DI,
      page: () => GetDiPage(),
    ),
     GetPage(
      name: Routes.LOCAL,
      page: () => GetLocalPage(),
    ),
  ];
}
