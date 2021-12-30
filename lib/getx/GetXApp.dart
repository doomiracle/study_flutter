import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:study_flutter/common/i18n/strings.dart';
import 'package:study_flutter/getx/routes/app_pages.dart';
import 'dart:ui' as ui;

/// GetX 应用
/// Material风格
/// 通过 GetX 这个框架实现 路由管理、状态管理、依赖管理
/// 注意：如果仅仅只用到了 状态管理或依赖管理，是可以不用创建 GetMaterialApp 的
class GetXApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 将 MaterialApp 替换为 GetMaterialApp
    return GetMaterialApp(
      // 首页
      initialRoute: Routes.GETX,
      // 所有的页面和名称
      getPages: AppPages.pages,
      // 默认的转场动画
      defaultTransition: Transition.zoom,
      // 路由动作回调
      routingCallback: (routing) => _routingCallback(routing),
      // 翻译资源
      translationsKeys: AppTranslation.translations,
      // 初始化语言(跟随系统)
      locale: ui.window.locale,
      // 语言不存在时默认翻译
      fallbackLocale: Locale('en', 'US'),
    );
  }

  /// 路由动作回调
  void _routingCallback(Routing? routing) {
    print(routing?.current);
  }
}
