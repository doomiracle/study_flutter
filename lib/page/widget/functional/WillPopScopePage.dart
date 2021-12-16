import 'package:flutter/material.dart';
import '/sample/widget/functional/WillPopScopeSample.dart';

/// 导航返回拦截
class WillPopScopePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("导航返回拦截示例"),
      ),
      body: WillPopScope1(),
    );
  }
}
