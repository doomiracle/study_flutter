import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter/sample/widget/basic/ButtonSample.dart';

/// Bottomsheets
class GetBottomsheetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomSheets示例"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: <Widget>[
                ElevatedButton1(
                  data: "BottomSheet",
                  onPressed: () => _bottomSheet1(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// BottomSheet
  /// 常用属性：
  ///   enableDrag  是否允许拖拽
  ///   isDismissible 点击空白处是否允许消失
  void _bottomSheet1() {
    Get.bottomSheet(
      Container(
        height: 160,
        color: Colors.white,
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(
                Icons.reset_tv,
                color: Colors.red,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black,
              ),
              title: Text('重启'),
            ),
            ListTile(
              leading: Icon(
                Icons.desktop_access_disabled,
                color: Colors.red,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black,
              ),
              title: Text('注销'),
            ),
            ListTile(
              leading: Icon(
                Icons.settings_power,
                color: Colors.red,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black,
              ),
              title: Text('关机'),
            ),
          ],
        ),
      ),
      // 是否允许拖拽
      enableDrag: false,
      // 点击空白处是否允许消失
      isDismissible: true,
    );
  }
}
