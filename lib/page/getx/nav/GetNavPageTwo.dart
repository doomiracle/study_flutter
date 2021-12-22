import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter/routes/getx/GetRoutes.dart';
import 'package:study_flutter/sample/widget/basic/ButtonSample.dart';

/// 导航页面2
class GetNavPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // 这里显示来自上个界面的数据
          title: Text(_arguments1()),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  "界面2",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: <Widget>[
                  ElevatedButton1(
                    data: "返回",
                    onPressed: () => Get.back(),
                  ),
                  ElevatedButton1(
                    data: "新的页面",
                    onPressed: () => Get.toNamed(GetRoutes.NAV3),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  String _arguments1() {
    var dataFromLastPage = Get.arguments;
    print("dataFromLastPage = " + dataFromLastPage);
    if (dataFromLastPage != null) {
      return dataFromLastPage;
    }
    return "界面2";
  }
}
