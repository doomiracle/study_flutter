import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:study_flutter/getx/routes/GetRoutes.dart';
import 'package:study_flutter/sample/widget/basic/ButtonSample.dart';

/// Get框架中自带的Widget组件，不需要上下文
class GetWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("内置组件"),
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
                    data: "Snackbars",
                    onPressed: () => Get.toNamed(GetRoutes.WIDGET_SNACKBARS),
                  ),
                  ElevatedButton1(
                    data: "Dialogs",
                    onPressed: () => Get.toNamed(GetRoutes.WIDGET_DIALOGS),
                  ),
                  ElevatedButton1(
                    data: "BottomSheets",
                    onPressed: () =>
                        Get.toNamed(GetRoutes.WIDGET_BOTTOMSSHEETS),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
