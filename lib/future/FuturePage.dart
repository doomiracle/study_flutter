import 'package:flutter/material.dart';

/// 异步UI
class FuturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("异步UI示例"),
      ),
      body: StreamBuilder1(),
    );
  }
}

/// FutureBuilder
/// 会依赖一个Future，它会根据所依赖的Future的状态来动态构建自身。
/// 常用属性：
///       future  FutureBuilder依赖的Future，通常是一个异步耗时任务。
///       initialData 初始数据，用户设置默认数据。
///       builder Widget构建器；该构建器会在Future执行的不同阶段被多次调用
///
/// ConnectionState状态说明：
///       done  异步任务已经终止
///       none  比如[FutureBuilder]的[future]为null时
///       waiting 异步任务处于等待状态
///       active  Stream处于激活状态（流上已经有数据传递了），对于FutureBuilder没有该状态；只会在 StreamBuilder 中出现
class FutureBuilder1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<String>(
        future: mockNetworkData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          // 请求已结束
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              // 请求失败，显示错误
              return Text("Error: ${snapshot.error}");
            } else {
              // 请求成功，显示数据
              return Text("Contents: ${snapshot.data}");
            }
          } else {
            // 请求未结束，显示loading
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

/// 模拟一个异步任务
Future<String> mockNetworkData() async {
  return Future.delayed(Duration(seconds: 2), () => "我是从互联网上获取的数据");
}

/// StreamBuilder
/// 会依赖一个Stream，它会根据所依赖的Stream的状态来动态构建自身。
/// 常用属性：
///       stream  StreamBuilder依赖的Stream，通常是一个异步耗时任务。
///       initialData 初始数据，用户设置默认数据。
///       builder Widget构建器；该构建器会在Stream执行的不同阶段被多次调用
class StreamBuilder1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<int>(
        stream: counter(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) return Text('Error: ${snapshot.error}');
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text('没有Stream');
            case ConnectionState.waiting:
              return Text('等待数据...');
            case ConnectionState.active:
              return Text('active: ${snapshot.data}');
            case ConnectionState.done:
              return Text('Stream已关闭');
          }
        },
      ),
    );
  }
}

/// 模拟一个Stream，每隔一秒返回一个数字
Stream<int> counter() {
  return Stream.periodic(Duration(seconds: 1), (i) {
    return i;
  });
}
