import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/sample/widget/basic/ButtonSample.dart';

/// 导航页面3
class GetNavPageThree extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("导航示例"),
        ),
        body: Container(
          padding: EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "界面3",
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
                    onPressed: () => {},
                    data: "回到上一个界面",
                  ),
                  ElevatedButton1(
                    onPressed: () => {},
                    data: "回到主界面",
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
