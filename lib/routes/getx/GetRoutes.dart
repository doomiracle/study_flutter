import 'package:get/get.dart';

import '/page/getx/GetXPage.dart';
import '/page/getx/nav/GetNavPage.dart';
import '/page/getx/nav/GetNavPageTwo.dart';
import '/page/getx/nav/GetNavPageThree.dart';

/// 定义所有的路由名称
/// 一般一个路由名称代表着一个界面
abstract class GetRoutes {

  static const INITIAL = '/';
  static const GETX = '/getx';
  static const NAV = '/nav1';
  static const NAV2 = '/nav2';
  static const NAV3 = '/nav3';

  /// 所有的页面配置以及名称
  static final pages = [
    GetPage(
      name: GETX,
      page: () => GetXPage(),
    ),
    GetPage(
      name: NAV,
      page: () => GetNavPage(),
    ),
    GetPage(
      name: NAV2,
      page: () => GetNavPageTwo(),
    ),
    GetPage(
      name: NAV3,
      page: () => GetNavPageThree(),
    ),
  ];


}
