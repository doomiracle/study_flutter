import 'package:get/get.dart';
import 'package:study_flutter/getx/page/di/GetDiPage.dart';
import 'package:study_flutter/getx/page/nav/GetNavPage.dart';
import 'package:study_flutter/getx/page/nav/GetNavPageThree.dart';
import 'package:study_flutter/getx/page/nav/GetNavPageTwo.dart';
import 'package:study_flutter/getx/page/state/GetStatePage.dart';
import 'package:study_flutter/getx/page/widget/GetBottomsheetsPage.dart';
import 'package:study_flutter/getx/page/widget/GetDialogsPage.dart';
import 'package:study_flutter/getx/page/widget/GetSnackbarsPage.dart';
import 'package:study_flutter/getx/page/widget/GetWidgetPage.dart';
import '../page/GetXPage.dart';

/// 定义所有的路由名称
/// 一般一个路由名称代表着一个界面
abstract class GetRoutes {
  static const INITIAL = '/';
  static const GETX = '/getx';
  static const NAV = '/nav1';
  static const NAV2 = '/nav2';
  static const NAV3 = '/nav3';
  static const WIDGET = '/widget';
  static const WIDGET_SNACKBARS = '/widgetSnackbars';
  static const WIDGET_DIALOGS = '/widgetDialogs';
  static const WIDGET_BOTTOMSSHEETS = '/widgetBottomssheets';
  static const STATE = '/state';
  static const DI = '/di';

  /// 所有的页面配置以及名称
  static final pages = [
    GetPage(
      // 名称
      name: GETX,
      // 页面
      page: () => GetXPage(),
    ),
    GetPage(
      name: NAV,
      page: () => GetNavPage(),
    ),
    GetPage(
      name: NAV2,
      page: () => GetNavPageTwo(),
      // 动画效果
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: NAV3,
      page: () => GetNavPageThree(),
    ),
    GetPage(
      name: WIDGET,
      page: () => GetWidgetPage(),
    ),
    GetPage(
      name: WIDGET_SNACKBARS,
      page: () => GetSnackbarsPage(),
    ),
    GetPage(
      name: WIDGET_DIALOGS,
      page: () => GetDialogsPage(),
    ),
    GetPage(
      name: WIDGET_BOTTOMSSHEETS,
      page: () => GetBottomsheetsPage(),
    ),
    GetPage(
      name: STATE,
      page: () => GetStatePage(),
    ),
     GetPage(
      name: DI,
      page: () => GetDiPage(),
    ),
  ];
}
