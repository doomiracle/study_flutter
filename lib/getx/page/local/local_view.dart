import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter/common/i18n/strings.dart';
import 'package:study_flutter/sample/widget/basic/ButtonSample.dart';

/// 国际化
class GetLocalPage extends StatelessWidget {
  const GetLocalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("国际化"),
      ),
      body: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton1(
              // 只要将.tr追加到指定的键上，就会使用Get.locale和Get.fallbackLocale的当前值进行翻译。
              data: LocaleKeys.change_zh.tr,
              onPressed: () => _updateLocale1('zh','CN'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton1(
              data: LocaleKeys.change_en.tr,
              onPressed: () => _updateLocale1('en','US'),
            ),
          ),
        ],
      ),
    );
  }

  /// 更新当前语言
  void _updateLocale1(String language, String country) {
    Get.updateLocale(Locale(language, country));
  }
}
